import 'package:flutter/material.dart';

class ErrorBox extends StatelessWidget {
  final String message;

  ErrorBox({this.message});

  @override
  Widget build(BuildContext context) {
    if (message == null) {
      return Container();
    } else {
      return Container(
        color: Colors.red,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                "Oops! $message. Por Favor, tente novamente.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
