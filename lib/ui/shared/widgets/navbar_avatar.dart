import 'package:flutter/material.dart';

class NavbarAvatar extends StatelessWidget {
  const NavbarAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        'https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png',
        width: 30,
        height: 30,
        scale: 1,
      ),
    );
  }
}
