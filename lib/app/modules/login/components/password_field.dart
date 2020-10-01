import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3, bottom: 4, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Senha",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              GestureDetector(
                child: Text(
                  "Esqueceu sua senha?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.purple),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        TextField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(), isDense: true),
          obscureText: true,
        ),
      ],
    );
  }
}
