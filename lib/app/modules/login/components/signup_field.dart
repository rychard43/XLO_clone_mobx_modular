import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignupField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          const Text(
            "Não tem uma conta? ",
            style: TextStyle(fontSize: 16),
          ),
          GestureDetector(
            onTap: () {
              Modular.to.pushNamed('/signup');
            },
            child: Text(
              "Cadastre-se",
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
