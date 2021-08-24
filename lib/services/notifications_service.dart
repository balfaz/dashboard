import 'package:flutter/material.dart';

class NotificationService {
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();
  static showSnackbarError(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
      backgroundColor: Colors.red.withOpacity(0.9),
    );

    messengerKey.currentState!.showSnackBar(snackBar);
  }
}
