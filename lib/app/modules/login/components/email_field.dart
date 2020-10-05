import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final void Function(String) callback;
  final String errorText;
  final bool enableTextField;

  EmailField({this.callback, this.errorText, this.enableTextField});

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
          enabled: enableTextField,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            isDense: true,
            errorText: errorText,
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: callback,
        ),
      ],
    );
  }
}
