import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FiledTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final String hint;
  final bool isDense;
  final TextInputType keyboardtype;
  final bool obscuretext;

  FiledTitle(
      {this.title,
      this.subtitle,
      this.isDense,
      this.hint = "",
      this.keyboardtype,
      this.obscuretext = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3, bottom: 4),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              Text(
                "$title  ",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "$subtitle",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "$hint",
            isDense: isDense,
          ),
          keyboardType: keyboardtype,
          autocorrect: false,
          inputFormatters: keyboardtype != TextInputType.phone
              ? null
              : [
                  WhitelistingTextInputFormatter.digitsOnly,
                  TelefoneInputFormatter()
                ],
          obscureText: obscuretext,
        ),
      ],
    );
  }
}
