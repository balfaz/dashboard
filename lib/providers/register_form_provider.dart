import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String nome = '';

  validateForm() {
    if (formKey.currentState!.validate()) {
      return true;
    } else {
      print("Form not valid");
      return false;
    }
  }
}
