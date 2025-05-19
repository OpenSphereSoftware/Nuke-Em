import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nukeem/main.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_cubit.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_state.dart';
import 'package:nukeem/presentation/style.dart';
import 'package:nukeem/presentation/widgets/floating_wrapper.dart';
import 'package:nukeem/presentation/widgets/live_rocket_ticker.dart';
import 'package:nukeem/presentation/widgets/standard_card.dart';
import 'package:shimmer/shimmer.dart';

class RocketSelectionWidget extends StatelessWidget {
  const RocketSelectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RocketSelectionCubit, RocketSelectionState>(
      builder: (context, state) {
        return StandardCard(
            padding: EdgeInsets.symmetric(horizontal: AppStyle.spacings.m, vertical: AppStyle.spacings.xs),
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
                                gradient: LinearGradient(colors: [AppStyle.colors.layer3, Colors.grey[500]!]),
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  separatorBuilder: (context, index) => SizedBox(
                                    width: AppStyle.spacings.s,
                                  ),
                                  itemBuilder: (context, index) => Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: AppStyle.colors.layer2,
                                        borderRadius: BorderRadius.circular(AppStyle.spacings.xs)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Expanded(child: Image.asset('assets/rockets/0.png')),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            'Rocket',
                                            style: AppStyle.textStyles.h5.bold.lightGrey.copyWith(fontSize: 12),
                                          ),
                                          Text(
                                            'Damage',
                                            style: AppStyle.textStyles.label.bold.light.copyWith(fontSize: 10),
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
                                      separatorBuilder: (context, index) => SizedBox(
                                        width: AppStyle.spacings.s,
                                      ),
                                      itemBuilder: (context, index) => MouseRegion(
                                        onEnter: (_) => changeCursorImage('assets/images/curser_click.png'),
                                        onExit: (_) => changeCursorImage('assets/images/curser_normal.png'),
                                        child: GestureDetector(
                                          onTap: () => BlocProvider.of<RocketSelectionCubit>(context).select(index),
                                          child: Container(
                                            height: 120,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                border: selectionState.selected == index
                                                    ? Border.all(color: AppStyle.colors.accent, width: 2)
                                                    : null,
                                                color: selectionState.selected == index
                                                    ? AppStyle.colors.layer3
                                                    : AppStyle.colors.layer2,
                                                borderRadius: BorderRadius.circular(AppStyle.spacings.xs)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  selectionState.selected == index
                                                      ? Expanded(
                                                          child: FloatingWrapper(
                                                              child: Image.asset('assets/rockets/${index}.png')))
                                                      : Expanded(child: Image.asset('assets/rockets/${index}.png')),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    selectionState.rockets[index].name,
                                                    style: AppStyle.textStyles.h5.bold.lightGrey.copyWith(fontSize: 12),
                                                  ),
                                                  Text(
                                                    'Damage: ${selectionState.rockets[index].damage}',
                                                    style: AppStyle.textStyles.label.bold.light.copyWith(fontSize: 10),
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
