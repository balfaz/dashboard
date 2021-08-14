import 'package:flutter/material.dart';

class NotificationIndicator extends StatelessWidget {
  const NotificationIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Icon(
            Icons.notifications_none_outlined,
            color: Colors.grey,
          ),
          Positioned(
            left: 2,
            child: Container(
              width: 5.0,
              height: 5.0,
              decoration: buildDecoration(),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration buildDecoration() => BoxDecoration(
      color: Colors.red, borderRadius: BorderRadius.circular(100));
}
