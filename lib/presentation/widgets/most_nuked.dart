import 'package:flutter/material.dart';
import 'package:nukeem/presentation/style.dart';
import 'package:nukeem/presentation/widgets/global_countdown.dart';
import 'package:nukeem/presentation/widgets/standard_card.dart';

class MostNuked extends StatelessWidget {
  const MostNuked({super.key});

  @override
  Widget build(BuildContext context) {
    return StandardCard(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Most Nuked',
          style: AppStyle.textStyles.h1.bold.accent.copyWith(fontSize: 44),
        ),
        SizedBox(height: AppStyle.spacings.xxxs),
        GlobalCountdown(),
        SizedBox(height: AppStyle.spacings.xs),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'gaycity',
                    style: AppStyle.textStyles.h5.bold.lightGrey,
                  ),
                  Text(
                    'India',
                    style: AppStyle.textStyles.h5.bold.lightGrey,
                  ),
                  Text(
                    '555',
                    style: AppStyle.textStyles.h5.bold.lightGrey,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
