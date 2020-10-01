import 'package:flutter/material.dart';

class ButtomLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 20, bottom: 12),
      child: RaisedButton(
        color: Colors.orange,
        child: Text("Entrar"),
        textColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {},
      ),
    );
  }
}
