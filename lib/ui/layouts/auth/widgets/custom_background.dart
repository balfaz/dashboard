import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: builBoxDecoration(),
      child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Center(
            child: Image(
              image: AssetImage('twitter-white-logo.png'),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration builBoxDecoration() {
    return BoxDecoration(
        image: DecorationImage(
            image: AssetImage('twitter-bg.png'), fit: BoxFit.cover));
  }
}
