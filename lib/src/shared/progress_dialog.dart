import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressDialog {
  static void show(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  static void dismiss(BuildContext context) {
    Navigator.pop(context);
  }
}
