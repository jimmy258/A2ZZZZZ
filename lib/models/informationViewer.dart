import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class InformationViewer {
  static showErrorToast(String msg, BuildContext context) {
    Toast.show(msg, context,
        duration: Toast.LENGTH_SHORT,
        gravity: Toast.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  static showSuccessToast(String msg, BuildContext context) {
    Toast.show(msg, context,
        duration: Toast.LENGTH_SHORT,
        gravity: Toast.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white);
  }
}
