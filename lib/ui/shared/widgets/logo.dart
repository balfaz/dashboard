import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Icon(
            Icons.bubble_chart_outlined,
            color: Color(0xff7A6BF5),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'My Dashboard',
            style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 20),
          )
        ],
      ),
    );
  }
}
