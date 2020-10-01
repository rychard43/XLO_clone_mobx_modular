import 'package:flutter/material.dart';

class ButtomLoginSignup extends StatelessWidget {

  final String text;


  ButtomLoginSignup(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20, bottom: 12),
      child: RaisedButton(
        color: Colors.orange,
        child: Text(text),
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
