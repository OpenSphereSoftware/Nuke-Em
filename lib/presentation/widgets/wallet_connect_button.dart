import 'package:flutter/material.dart';
import 'package:solana_wallet_adapter/solana_wallet_adapter.dart';
import 'package:nukeem/presentation/style.dart';
import 'dart:async';

class WalletConnectButton extends StatefulWidget {
  const WalletConnectButton({super.key});

  @override
  State<WalletConnectButton> createState() => _WalletConnectButtonState();
}

class _WalletConnectButtonState extends State<WalletConnectButton> {
  final SolanaWalletAdapter _adapter = SolanaWalletAdapter(
    AppIdentity(
      name: "Nuke-Em",
      uri: Uri(host: "nuke-em.com"),
      icon: Uri.file("logos/flutter_white/logo.png"),
    ),
    cluster: Cluster.devnet,
  );

  bool _isConnecting = false;
  String? _walletAddress;
  String? _errorMessage;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initWallet();
  }

  Future<void> _initWallet() async {
    try {
      await SolanaWalletAdapter.initialize();
      setState(() {
        _isInitialized = true;
      });

      if (_adapter.isAuthorized && _adapter.connectedAccount != null) {
        setState(() {
          _walletAddress = _shortenAddress(_adapter.connectedAccount!.address);
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = "Failed to initialize wallet: ${e.toString()}";
        _isInitialized = true; // Still mark as initialized so we can show the error
      });
      debugPrint('Error initializing wallet adapter: $e');
    }
  }

  String _shortenAddress(String address) {
    if (address.length <= 8) return address;
    return '${address.substring(0, 4)}...${address.substring(address.length - 4)}';
  }

  Future<void> _connectWallet() async {
    if (_isConnecting || !_isInitialized) return;

    setState(() {
      _isConnecting = true;
      _errorMessage = null;
    });

    try {
      final result = await _adapter.authorize();
      if (result.accounts.isNotEmpty) {
        setState(() {
          _walletAddress = _shortenAddress(result.accounts[0].address);
        });
      } else {
        setState(() {
          _errorMessage = "No accounts returned from wallet";
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = "hFailed to connect wallet: ${e.toString().split('\n').first}";
      });
      debugPrint('Wallet connection error: $e');
    } finally {
      setState(() {
        _isConnecting = false;
      });
    }
  }

  Future<void> _disconnectWallet() async {
    try {
      await _adapter.deauthorize();
      setState(() {
        _walletAddress = null;
      });
    } catch (e) {
      setState(() {
        _errorMessage = "Failed to disconnect wallet: ${e.toString().split('\n').first}";
      });
      debugPrint('Wallet disconnection error: $e');
    }
  }

  void _clearError() {
    if (_errorMessage != null) {
      setState(() {
        _errorMessage = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: AppStyle.colors.accent,
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(800),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      _errorMessage!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  InkWell(
                    onTap: _clearError,
                    child: const Icon(
                      Icons.close,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        _walletAddress != null ? _buildConnectedButton() : _buildConnectButton(),
      ],
    );
  }

  Widget _buildConnectButton() {
    return ElevatedButton(
      onPressed: _isConnecting ? null : _connectWallet,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppStyle.colors.accent,
        foregroundColor: AppStyle.colors.dark,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: _isConnecting
          ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppStyle.colors.dark,
              ),
            )
          : const Text('Connect Wallet'),
    );
  }

  Widget _buildConnectedButton() {
    return Container(
      decoration: BoxDecoration(
        color: AppStyle.colors.layer2,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _walletAddress!,
            style: TextStyle(
              color: AppStyle.colors.light,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: _disconnectWallet,
            child: Icon(
              Icons.logout,
              size: 16,
              color: AppStyle.colors.light,
            ),
          ),
        ],
      ),
    );
  }
}
