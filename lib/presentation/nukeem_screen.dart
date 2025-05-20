import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nukeem/presentation/config_cubit/config_cubit.dart';
import 'package:nukeem/presentation/most_nuked_cubit/most_nuked_cubit.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_cubit.dart';
import 'package:nukeem/presentation/scammer_nuke_cubit/scammer_nuke_cubit.dart';
import 'package:nukeem/presentation/style.dart';
import 'package:nukeem/presentation/widgets/background_gradient.dart';
import 'package:nukeem/presentation/widgets/explosion_map.dart';
import 'package:nukeem/presentation/widgets/most_nuked.dart';
import 'package:nukeem/presentation/widgets/overlay_dialog.dart';
import 'package:nukeem/presentation/widgets/rocket_selection.dart';
import 'package:nukeem/presentation/widgets/selected_rocket_floating.dart';
import 'package:nukeem/presentation/widgets/wallet_connect_button.dart';
import 'package:nukeem/service_locator.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NukeEmScreenWrapper extends StatelessWidget {
  const NukeEmScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => serviceLocator<ConfigCubit>()..loadConfig(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<RocketSelectionCubit>()..load(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<MostNukedCubit>()..loadLeaderboard(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<ScammerNukeCubit>(),
        ),
      ],
      child: const NukeEmScreen(),
    );
  }
}

class NukeEmScreen extends StatefulWidget {
  const NukeEmScreen({super.key});

  @override
  State<NukeEmScreen> createState() => _NukeEmScreenState();
}

class _NukeEmScreenState extends State<NukeEmScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openOverlay() {
    final TextEditingController scammerAddressController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    OverlayDialogHelper.show(
      context: context,
      child: BlocProvider<ScammerNukeCubit>.value(
        value: context.read<ScammerNukeCubit>(),
        child: BlocBuilder<ScammerNukeCubit, ScammerNukeState>(
          builder: (context, state) {
            final bool isTransactionInProgress = state is ScammerNukeLoading;
            final String? transactionMessage = state is ScammerNukeSuccess
                ? "SCAMMER ${state.scammerAddress} GOT NUKED\nTransaction: ${state.displaySignature}"
                : state is ScammerNukeFailure
                    ? "Error: ${state.errorMessage}"
                    : null;

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Found a scammer? NUKE EM!',
                  style: AppStyle.textStyles.h2.bold.accent,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppStyle.spacings.m),
                Text(
                  'Connect your solana wallet, insert the social media address of the scammer and send a nuke his way for the small fee of 1 SOL.',
                  style: AppStyle.textStyles.info.regular.light,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppStyle.spacings.m),
                Form(
                  key: formKey,
                  child: TextFormField(
                    controller: scammerAddressController,
                    style: AppStyle.textStyles.h5.regular.light,
                    decoration: InputDecoration(
                      hintText: 'Enter scammer address',
                      hintStyle: AppStyle.textStyles.h5.regular.lightGrey,
                      filled: true,
                      fillColor: AppStyle.colors.layer2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppStyle.spacings.xxs),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppStyle.spacings.s,
                        vertical: AppStyle.spacings.xs,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a scammer address';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: AppStyle.spacings.m),
                if (transactionMessage != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: AppStyle.spacings.s),
                    child: Text(
                      transactionMessage,
                      style: AppStyle.textStyles.h4.bold.accent,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ElevatedButton(
                  onPressed: isTransactionInProgress
                      ? null
                      : () async {
                          if (formKey.currentState!.validate()) {
                            final cubit = context.read<ScammerNukeCubit>();
                            // Check if wallet is connected first
                            if (!cubit.isWalletConnected) {
                              // Connect wallet first
                              await cubit.connectWallet();
                              // Only proceed if connection was successful
                              if (!cubit.isWalletConnected) {
                                return; // Connection failed or was cancelled
                              }
                            }
                            // Wallet is connected, now send the transaction
                            cubit.sendNuke();
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppStyle.colors.accent,
                    foregroundColor: AppStyle.colors.dark,
                    padding: EdgeInsets.symmetric(horizontal: AppStyle.spacings.m, vertical: AppStyle.spacings.xs),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppStyle.spacings.xxs),
                    ),
                  ),
                  child: isTransactionInProgress
                      ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppStyle.colors.dark,
                          ),
                        )
                      : Text(
                          'NUKE EM',
                          style: AppStyle.textStyles.h5.bold.dark,
                        ),
                ),
                SizedBox(height: AppStyle.spacings.m),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppStyle.colors.layer2,
                    foregroundColor: AppStyle.colors.light,
                    padding: EdgeInsets.symmetric(horizontal: AppStyle.spacings.m, vertical: AppStyle.spacings.xs),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppStyle.spacings.xxs),
                    ),
                  ),
                  child: Text(
                    'Close',
                    style: AppStyle.textStyles.h5.bold.light,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CircularGradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0, top: 8.0),
              child: WalletConnectButton(),
            ),
          ],
        ),
        body: MaxWidthBox(
          maxWidth: 1400,
          backgroundColor: Colors.transparent,
          child: ResponsiveScaledBox(
            width: ResponsiveValue<double>(context, conditionalValues: [
              Condition.equals(name: MOBILE, value: 450),
              Condition.equals(name: TABLET, value: 800),
              Condition.equals(name: DESKTOP, value: 1400),
            ]).value,
            child: Padding(
              padding:
                  EdgeInsets.only(left: AppStyle.spacings.l, right: AppStyle.spacings.l, top: AppStyle.spacings.xl),
              child: BouncingScrollWrapper(
                child: SingleChildScrollView(
                  child: ResponsiveRowColumn(
                    layout: ResponsiveBreakpoints.of(context).isDesktop
                        ? ResponsiveRowColumnType.ROW
                        : ResponsiveRowColumnType.COLUMN,
                    children: [
                      ResponsiveRowColumnItem(
                        rowFlex: 2,
                        child: ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 700, maxWidth: 400), child: MostNuked()),
                      ),
                      ResponsiveRowColumnItem(
                        child: SizedBox(
                          width: AppStyle.spacings.m,
                          height: AppStyle.spacings.m,
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        rowFlex: 5,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 700),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Spacer(),
                                                Text(
                                                  'Tired of getting rugged by Scammers? ',
                                                  style: AppStyle.textStyles.h2.regular.light,
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: AppStyle.spacings.s,
                                                ),
                                                ElevatedButton(
                                                  onPressed: _openOverlay,
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: AppStyle.colors.accent.withAlpha(100),
                                                    foregroundColor: AppStyle.colors.dark,
                                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'NUKE-',
                                                        style: AppStyle.textStyles.h1.bold.light
                                                            .copyWith(fontSize: 50, color: Colors.white),
                                                      ),
                                                      Text(
                                                        'EM',
                                                        style: AppStyle.textStyles.h1.bold.light
                                                            .copyWith(fontSize: 50, color: Color(0xff52d694)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: AppStyle.spacings.xxs,
                                                ),
                                                Text(
                                                  'To Add Them To Our Registry',
                                                  style: AppStyle.textStyles.h5.regular.light,
                                                  textAlign: TextAlign.center,
                                                ),
                                                Spacer(),
                                                SelectedRocketFloating()
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: AppStyle.spacings.m,
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(50),
                                        child: Transform(
                                          alignment: Alignment.center,
                                          transform: Matrix4.identity()
                                            ..setEntry(3, 2, 0.0015)
                                            ..rotateX(-0.15)
                                            ..rotateY(0.3),
                                          child: ExplosionMap(),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: AppStyle.spacings.s,
                              ),
                              RocketSelectionWidget()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
