import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlo_mobx_parse/app/modules/signup/signup_controller.dart';

class FiledTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final String hint;
  final bool isDense;
  final TextInputType keyboardtype;
  final bool obscuretext;
  final void Function(String) callback;
  final String errorText;
  final bool enableTextField;

  FiledTitle(
      {this.title,
      this.subtitle,
      this.isDense,
      this.hint = "",
      this.keyboardtype,
      this.obscuretext = false,
      this.callback,
      this.errorText="",
      this.enableTextField});

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
          enabled: enableTextField,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "$hint",
            isDense: isDense,
            errorText: errorText
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
          onChanged: callback,
        ),
      ],
    );
  }
}
