import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_cubit.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_state.dart';
import 'package:nukeem/presentation/style.dart';
import 'package:nukeem/presentation/widgets/floating_wrapper.dart';
import 'package:nukeem/presentation/widgets/shaking_image.dart';
import 'package:shimmer/shimmer.dart';

class SelectedRocketFloating extends StatelessWidget {
  const SelectedRocketFloating({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RocketSelectionCubit, RocketSelectionState>(
      builder: (context, state) {
        return state.maybeMap(
            selection: (selection) => FloatingWrapper(
                  child: ShakingImage(
                    imagePath: 'assets/rockets/${selection.selected}.png',
                  ),
                ),
            orElse: () => Shimmer(
                  gradient: LinearGradient(colors: [AppStyle.colors.layer3, Colors.grey[500]!]),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppStyle.spacings.xl),
                      child: Image.asset('assets/rockets/0.png')),
                ));
      },
    );
  }
}
