import 'package:flutter/material.dart';

class AlreadyRegistered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Já tem uma conta? ",
            style: TextStyle(fontSize: 16),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Entrar",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.purple,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
