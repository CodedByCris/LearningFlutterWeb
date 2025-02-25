import 'package:flutter/material.dart';

class NotificationsIndicator extends StatelessWidget {
  const NotificationsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Icons.notifications_outlined, color: Colors.grey),

        Positioned(
          left: 2,
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ],
    );
  }
}
