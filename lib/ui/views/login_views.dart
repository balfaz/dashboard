import 'package:admin_dashboard/ui/buttons/custom_autlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      margin: EdgeInsets.only(top: 100),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 370),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: buildInputDecoration(
                    hint: 'Scrive email', label: 'Email', icon: Icons.email),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: buildInputDecoration(
                    hint: 'Scrive password',
                    label: 'Password',
                    icon: Icons.lock),
              ),
              SizedBox(
                height: 20,
              ),
              CustomAutlinedButton(
                onPressed: () {},
                text: 'Ingresar',
                isFilled: true,
              ),
              LinkText(
                text: 'Nuovo Account',
                onPressed: () {},
              )
            ],
          )),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(
      {required String hint, required String label, required IconData icon}) {
    return InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ));
  }
}
