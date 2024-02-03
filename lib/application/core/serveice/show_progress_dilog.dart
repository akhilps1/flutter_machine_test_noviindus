import 'package:flutter/material.dart';

void showProgress<T>(BuildContext context) {
  showDialog<T>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return const PopScope(
        canPop: false,
        child: SizedBox(
          height: 50,
          width: 50,
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ),
      );
    },
  );
}
