import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_background.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_title.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/link_bar.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;

  const AuthLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scrollbar(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            (size.width > 1000)
                ? _DesktopBody(
                    child: child,
                  )
                : _MobileBody(child: child),
            LinksBar()
            ////mobile
            /////linkbar
          ],
        ),
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;
  const _DesktopBody({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print();
    return Container(
      width: size.width,
      height: size.height * 0.95,
      child: Row(
        children: [
          Expanded(child: CustomBackground()),
          Container(
            height: double.infinity,
            width: 600,
            color: Colors.black,
            child: Column(
              children: [
                CustomTitle(),
                SizedBox(
                  height: 50,
                ),
                Expanded(child: child)
                //Expanded(child: child)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _MobileBody extends StatelessWidget {
  final Widget child;
  const _MobileBody({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTitle(),
          Container(
            width: double.infinity,
            height: 420,
            child: child,
          ),
          Container(
            height: 400,
            width: double.infinity,
            child: CustomBackground(),
          )
        ],
      ),
    );
  }
}
