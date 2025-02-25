import 'package:admin_dashboard/ui/cards/white_card.dart';
import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class IconsView extends StatelessWidget {
  const IconsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        Text('Icons', style: CustomLabels.h1),
        SizedBox(height: 10),

        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          // direction: Axis.horizontal,
          children: [
            WhiteCard(
              title: 'ac_unit_outlined',
              width: 180,
              child: Center(child: Icon(Icons.ac_unit_outlined)),
            ),
            WhiteCard(
              title: 'access_alarms_outlined',
              width: 180,
              child: Center(child: Icon(Icons.access_alarms_outlined)),
            ),
            WhiteCard(
              title: 'data_saver_off_rounded',
              width: 180,
              child: Center(child: Icon(Icons.data_saver_off_rounded)),
            ),
            WhiteCard(
              title: 'real_estate_agent',
              width: 180,
              child: Center(child: Icon(Icons.real_estate_agent)),
            ),
            WhiteCard(
              title: 'sailing_outlined',
              width: 180,
              child: Center(child: Icon(Icons.sailing_outlined)),
            ),
            WhiteCard(
              title: 'gamepad_outlined',
              width: 180,
              child: Center(child: Icon(Icons.gamepad_outlined)),
            ),
          ],
        ),
      ],
    );
  }
}
