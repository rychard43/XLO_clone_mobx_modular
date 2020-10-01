import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3, bottom: 4, top: 8),
          child: Text(
            "E-mail",
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              isDense: true
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
