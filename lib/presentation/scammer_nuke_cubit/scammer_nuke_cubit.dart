import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:solana_wallet_adapter/solana_wallet_adapter.dart';
import 'package:solana_web3/solana_web3.dart' as solana_web3;
import 'package:solana_web3/programs.dart';
import 'package:nukeem/service_locator.dart';

part 'scammer_nuke_state.dart';

class ScammerNukeCubit extends Cubit<ScammerNukeState> {
  final SolanaWalletAdapter _walletAdapter = serviceLocator<SolanaWalletAdapter>();

  ScammerNukeCubit() : super(ScammerNukeInitial());

  /// Returns true if the wallet is connected
  bool get isWalletConnected => _walletAdapter.isAuthorized && _walletAdapter.connectedAccount != null;

  /// Connect the wallet
  Future<void> connectWallet() async {
    try {
      // Make sure wallet is initialized
      await SolanaWalletAdapter.initialize();

      // Authorize the wallet if not already authorized
      if (!_walletAdapter.isAuthorized) {
        await _walletAdapter.authorize();
      }
    } catch (e) {
      debugPrint('Error connecting wallet: $e');
      emit(ScammerNukeFailure(
        errorMessage: 'Failed to connect wallet: ${e.toString().split('\n').first}',
      ));
    }
  }

  Future<void> sendNuke() async {
    if (!isWalletConnected) {
      emit(const ScammerNukeFailure(errorMessage: 'Wallet not connected'));
      return;
    }

    emit(ScammerNukeLoading());

    try {
      // TODO change address to burn wallet
      final destinationAddress = "9Q3aFqgeatBT72ameMZKSnMbgUUTcy9N5gaoeX33EQMY";

      // Create a connection to the Solana network
      final cluster = _walletAdapter.cluster ?? solana_web3.Cluster.mainnet;
      final connection = solana_web3.Connection(cluster);

      // Get the recent blockhash
      final blockhash = await connection.getLatestBlockhash();

      // Convert sender address to pubkey
      final fromPubkey = solana_web3.Pubkey.fromBase58(_walletAdapter.connectedAccount!.address);

      // Convert destination address to pubkey
      final toPubkey = solana_web3.Pubkey.fromString(destinationAddress);

      // TODO change amount and token
      final lamports = 1000000000;

      // Create a transfer instruction
      final instruction = SystemProgram.transfer(
        fromPubkey: fromPubkey,
        toPubkey: toPubkey,
        lamports: BigInt.from(lamports),
      );

      // Create the transaction
      final transaction = solana_web3.Transaction.v0(
        payer: fromPubkey,
        recentBlockhash: blockhash.blockhash,
        instructions: [instruction],
      );

      // Encode the transaction
      final encodedTransaction = _walletAdapter.encodeTransaction(transaction);

      // Sign and send the transaction
      final result = await _walletAdapter.signAndSendTransactions([encodedTransaction]);

      if (result.signatures.isNotEmpty && result.signatures[0] != null) {
        emit(ScammerNukeSuccess(
          transactionSignature: result.signatures[0]!,
          scammerAddress: destinationAddress,
        ));
      } else {
        emit(const ScammerNukeFailure(
          errorMessage: 'Transaction failed: No signature returned',
        ));
      }
    } catch (e, s) {
      debugPrint('Error sending transaction: $e $s');
      emit(ScammerNukeFailure(
        errorMessage: 'Transaction failed: ${e.toString().split('\n').first}',
      ));
    }
  }
}
