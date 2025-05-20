part of 'scammer_nuke_cubit.dart';

sealed class ScammerNukeState extends Equatable {
  const ScammerNukeState();
}

final class ScammerNukeInitial extends ScammerNukeState {
  @override
  List<Object> get props => [];
}

final class ScammerNukeLoading extends ScammerNukeState {
  @override
  List<Object> get props => [];
}

final class ScammerNukeSuccess extends ScammerNukeState {
  final String transactionSignature;
  final String scammerAddress;
  final bool isBase64Signature;

  // Constructor to handle either Base58 or Base64 signatures
  const ScammerNukeSuccess({
    required this.transactionSignature,
    required this.scammerAddress,
    this.isBase64Signature = false,
  });

  // Provide a helper getter that returns a display-friendly signature
  String get displaySignature {
    if (transactionSignature.length > 20) {
      return '${transactionSignature.substring(0, 10)}...${transactionSignature.substring(transactionSignature.length - 10)}';
    }
    return transactionSignature;
  }

  @override
  List<Object> get props =>
      [transactionSignature, scammerAddress, isBase64Signature];
}

final class ScammerNukeFailure extends ScammerNukeState {
  final String errorMessage;

  const ScammerNukeFailure({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
