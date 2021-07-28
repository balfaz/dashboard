import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //desktop
          _DesktopBody(),
          ////mobile
          /////linkbar
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.red,
      child: Row(
        children: [
          CustomBackground(),
          Container(
            height: double.infinity,
            width: 600,
            color: Colors.black,
            // child: ,
          )
        ],
      ),
    );
  }
}
