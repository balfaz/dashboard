import 'package:flutter/material.dart';

class NavbarAvatar extends StatelessWidget {
  const NavbarAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ClipOval(
      child: Container(
        child: Image.network(
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
          width: 30,
          height: 30,
          scale: 1,
        ),
=======
    return Container(
      child: ClipOval(
        child: Image.network(
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
            width: 30,
            height: 30),
>>>>>>> e2d23c8cc405a13d8bdd3634853bb23768a8c56d
      ),
    );
  }
}
