import 'package:admin_dashboard/ui/shared/widgets/navbar_avatar.dart';
import 'package:admin_dashboard/ui/shared/widgets/notification_indicator.dart';
import 'package:admin_dashboard/ui/shared/widgets/search_tex.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: buildDecoration(),
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.menu_outlined), onPressed: () {}),
          SizedBox(
            width: 5.0,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 250),
            child: SearchText(),
          ),
          Spacer(),
          NotificationIndicator(),
          SizedBox(
            width: 10.0,
          ),
          NavbarAvatar()
        ],
      ),
    );
  }

  BoxDecoration buildDecoration() => BoxDecoration(
      color: Colors.white,
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]);
}
