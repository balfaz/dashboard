import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String nome = '';

  validateForm() {
    formKey.currentState!.validate();
  }
}
