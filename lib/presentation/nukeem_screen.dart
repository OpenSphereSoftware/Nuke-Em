import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nukeem/main.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_cubit.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_state.dart';
import 'package:nukeem/presentation/style.dart';
import 'package:nukeem/presentation/widgets/background_gradient.dart';
import 'package:nukeem/presentation/widgets/explosion_map.dart';
import 'package:nukeem/presentation/widgets/floating_wrapper.dart';
import 'package:nukeem/presentation/widgets/live_rocket_ticker.dart';
import 'package:nukeem/presentation/widgets/map_wrapper.dart';
import 'package:nukeem/presentation/widgets/overlay_dialog.dart';
import 'package:nukeem/presentation/widgets/shaking_image.dart';
import 'package:nukeem/presentation/widgets/standard_card.dart';
import 'package:nukeem/presentation/widgets/wallet_connect_button.dart';
import 'package:nukeem/service_locator.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shimmer/shimmer.dart';
import 'package:solana_wallet_adapter/solana_wallet_adapter.dart';
import 'package:solana_web3/solana_web3.dart';
import 'package:solana_web3/programs.dart';

class NukeEmScreenWrapper extends StatelessWidget {
  const NukeEmScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => serviceLocator<RocketSelectionCubit>()..load(),
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
    final TextEditingController scammerAddressController =
        TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    bool isTransactionInProgress = false;
    String? transactionMessage;

    OverlayDialogHelper.show(
      context: context,
      child: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
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
                      borderRadius:
                          BorderRadius.circular(AppStyle.spacings.xxs),
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
                    transactionMessage!,
                    style: AppStyle.textStyles.h4.bold.accent,
                    textAlign: TextAlign.center,
                  ),
                ),
              ElevatedButton(
                onPressed: isTransactionInProgress
                    ? null
                    : () async {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            isTransactionInProgress = true;
                            transactionMessage = null;
                          });

                          try {
                            // Simulate a successful transaction for now
                            await Future.delayed(Duration(seconds: 2));

                            setState(() {
                              transactionMessage =
                                  "SCAMMER ${scammerAddressController.text} GOT NUKED";
                              isTransactionInProgress = false;
                            });
                          } catch (e) {
                            setState(() {
                              transactionMessage = "Error: ${e.toString()}";
                              isTransactionInProgress = false;
                            });
                          }
                        }
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyle.colors.accent,
                  foregroundColor: AppStyle.colors.dark,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppStyle.spacings.m,
                      vertical: AppStyle.spacings.xs),
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
                  padding: EdgeInsets.symmetric(
                      horizontal: AppStyle.spacings.m,
                      vertical: AppStyle.spacings.xs),
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
              padding: EdgeInsets.only(
                  left: AppStyle.spacings.l,
                  right: AppStyle.spacings.l,
                  top: AppStyle.spacings.xl),
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
                          constraints:
                              BoxConstraints(maxHeight: 700, maxWidth: 400),
                          child: StandardCard(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Most Nuked',
                                style: AppStyle.textStyles.h1.bold.accent
                                    .copyWith(fontSize: 44),
                              ),
                              SizedBox(height: AppStyle.spacings.xxxs),
                              GlobalCountdown(),
                              SizedBox(height: AppStyle.spacings.xs),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'City',
                                    style: AppStyle.textStyles.h3.bold.light,
                                  ),
                                  Text(
                                    'Country',
                                    style: AppStyle.textStyles.h3.bold.light,
                                  ),
                                  Text(
                                    'Nukes',
                                    style: AppStyle.textStyles.h3.bold.light,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 100,
                                  itemBuilder: (context, i) => Padding(
                                    padding: EdgeInsets.symmetric(vertical: 2),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'gaycity',
                                          style: AppStyle
                                              .textStyles.h5.bold.lightGrey,
                                        ),
                                        Text(
                                          'India',
                                          style: AppStyle
                                              .textStyles.h5.bold.lightGrey,
                                        ),
                                        Text(
                                          '555',
                                          style: AppStyle
                                              .textStyles.h5.bold.lightGrey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                        ),
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Spacer(),
                                                  Text(
                                                    'Tired of getting rugged by Scammers? ',
                                                    style: AppStyle.textStyles
                                                        .h2.regular.light,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    height: AppStyle.spacings.s,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: _openOverlay,
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor: AppStyle
                                                          .colors.accent
                                                          .withAlpha(100),
                                                      foregroundColor:
                                                          AppStyle.colors.dark,
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 16,
                                                          vertical: 8),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'NUKE-',
                                                          style: AppStyle
                                                              .textStyles
                                                              .h1
                                                              .bold
                                                              .light
                                                              .copyWith(
                                                                  fontSize: 50,
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                        Text(
                                                          'EM',
                                                          style: AppStyle
                                                              .textStyles
                                                              .h1
                                                              .bold
                                                              .light
                                                              .copyWith(
                                                                  fontSize: 50,
                                                                  color: Color(
                                                                      0xff52d694)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        AppStyle.spacings.xxs,
                                                  ),
                                                  Text(
                                                    'To Add Them To Our Registry',
                                                    style: AppStyle.textStyles
                                                        .h5.regular.light,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Spacer(),
                                                  BlocBuilder<
                                                      RocketSelectionCubit,
                                                      RocketSelectionState>(
                                                    builder: (context, state) {
                                                      return state.maybeMap(
                                                          selection:
                                                              (selection) =>
                                                                  FloatingWrapper(
                                                                    child:
                                                                        ShakingImage(
                                                                      imagePath:
                                                                          'assets/rockets/${selection.selected}.png',
                                                                    ),
                                                                  ),
                                                          orElse: () => Shimmer(
                                                                gradient:
                                                                    LinearGradient(
                                                                        colors: [
                                                                      AppStyle
                                                                          .colors
                                                                          .layer3,
                                                                      Colors.grey[
                                                                          500]!
                                                                    ]),
                                                                child: Padding(
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal: AppStyle
                                                                            .spacings
                                                                            .xl),
                                                                    child: Image
                                                                        .asset(
                                                                            'assets/rockets/0.png')),
                                                              ));
                                                    },
                                                  ),
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
                                                    ..setEntry(3, 2,
                                                        0.0015) // perspective
                                                    ..rotateX(-0.15)
                                                    ..rotateY(
                                                        0.3), // kippt nach hinten rechts
                                                  //..rotateY(0.3))
                                                  /*,*/
                                                  child: ExplosionMap())))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: AppStyle.spacings.s,
                                ),
                                RocketSelectionWidget()
                              ],
                            )),
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

class GlobalCountdown extends StatefulWidget {
  const GlobalCountdown({super.key});

  @override
  State<GlobalCountdown> createState() => _GlobalCountdownState();
}

class _GlobalCountdownState extends State<GlobalCountdown> {
  static const Duration initialDuration = Duration(hours: 2, minutes: 33);
  late DateTime _endTime;
  late Timer _timer;
  Duration _remaining = initialDuration;

  @override
  void initState() {
    super.initState();
    _endTime = DateTime.now().add(initialDuration);
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      final now = DateTime.now();
      final diff = _endTime.difference(now);
      if (diff <= Duration.zero) {
        _timer.cancel();
        setState(() {
          _remaining = Duration.zero;
        });
      } else {
        setState(() {
          _remaining = diff;
        });
      }
    });
  }

  String _formatTime(Duration duration) {
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    final milliseconds = (duration.inMilliseconds % 1000 ~/ 10)
        .toString()
        .padLeft(2, '0'); // 2-digit ms
    return '$hours:$minutes:$seconds:$milliseconds';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isUnder15Minutes = _remaining < const Duration(minutes: 15);
    final countdownStyle = AppStyle.textStyles.h1.regular.light.copyWith(
      fontSize: 46,
      color: isUnder15Minutes ? Colors.yellow : AppStyle.colors.light,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Places Nuke Count Resets In',
          style: AppStyle.textStyles.h4.regular.lightGrey,
          textAlign: TextAlign.center,
        ),
        Flexible(
          child: Text(
            _formatTime(_remaining),
            style: countdownStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class RocketSelectionWidget extends StatelessWidget {
  const RocketSelectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RocketSelectionCubit, RocketSelectionState>(
      builder: (context, state) {
        return StandardCard(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyle.spacings.m,
                vertical: AppStyle.spacings.xs),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose\nNuke',
                      style: AppStyle.textStyles.h2.bold.accent,
                    ),
                    SizedBox(
                      height: AppStyle.spacings.xxs,
                    ),
                    Text(
                      'BASED ON HATE',
                      style: AppStyle.textStyles.h5.bold.light,
                    ),
                  ],
                ),
                SizedBox(
                  width: AppStyle.spacings.m,
                ),
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: state.maybeMap(
                        loading: (_) => Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Shimmer(
                                gradient: LinearGradient(colors: [
                                  AppStyle.colors.layer3,
                                  Colors.grey[500]!
                                ]),
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    width: AppStyle.spacings.s,
                                  ),
                                  itemBuilder: (context, index) => Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: AppStyle.colors.layer2,
                                        borderRadius: BorderRadius.circular(
                                            AppStyle.spacings.xs)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Expanded(
                                              child: Image.asset(
                                                  'assets/rockets/0.png')),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            'Rocket',
                                            style: AppStyle
                                                .textStyles.h5.bold.lightGrey
                                                .copyWith(fontSize: 12),
                                          ),
                                          Text(
                                            'Damage',
                                            style: AppStyle
                                                .textStyles.label.bold.light
                                                .copyWith(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        selection: (selectionState) => Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: ScrollConfiguration(
                                    behavior: const ScrollBehavior().copyWith(
                                      dragDevices: {
                                        PointerDeviceKind.touch,
                                        PointerDeviceKind.mouse,
                                      },
                                    ),
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 6,
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        width: AppStyle.spacings.s,
                                      ),
                                      itemBuilder: (context, index) =>
                                          MouseRegion(
                                        onEnter: (_) => changeCursorImage(
                                            'assets/images/curser_click.png'),
                                        onExit: (_) => changeCursorImage(
                                            'assets/images/curser_normal.png'),
                                        child: GestureDetector(
                                          onTap: () => BlocProvider.of<
                                                  RocketSelectionCubit>(context)
                                              .select(index),
                                          child: Container(
                                            height: 120,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                border:
                                                    selectionState.selected ==
                                                            index
                                                        ? Border.all(
                                                            color: AppStyle
                                                                .colors.accent,
                                                            width: 2)
                                                        : null,
                                                color: selectionState
                                                            .selected ==
                                                        index
                                                    ? AppStyle.colors.layer3
                                                    : AppStyle.colors.layer2,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppStyle.spacings.xs)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  selectionState.selected ==
                                                          index
                                                      ? Expanded(
                                                          child: FloatingWrapper(
                                                              child: Image.asset(
                                                                  'assets/rockets/${index}.png')))
                                                      : Expanded(
                                                          child: Image.asset(
                                                              'assets/rockets/${index}.png')),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    'Rockettype',
                                                    style: AppStyle.textStyles
                                                        .h5.bold.lightGrey
                                                        .copyWith(fontSize: 12),
                                                  ),
                                                  Text(
                                                    'Damage: 50',
                                                    style: AppStyle.textStyles
                                                        .label.bold.light
                                                        .copyWith(fontSize: 10),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                LayoutBuilder(builder: (context, constraints) {
                                  return Expanded(
                                      child: LiveRocketTicker(
                                    width: constraints.maxWidth - 10,
                                  ));
                                }),
                              ],
                            ),
                        orElse: () => Row(
                              children: [
                                // TODO error Retry
                              ],
                            )),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
