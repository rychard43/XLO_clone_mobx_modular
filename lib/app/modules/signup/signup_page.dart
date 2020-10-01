import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:xlo_mobx_parse/app/core/widgets/buttom_login_signup/buttom_login_signup.dart';
import 'package:xlo_mobx_parse/app/modules/signup/components/already_registered.dart';
import 'package:xlo_mobx_parse/app/modules/signup/components/field_title.dart';
import 'signup_controller.dart';

class SignupPage extends StatefulWidget {
  final String title;

  const SignupPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FiledTitle(
                    title: "Apelido",
                    subtitle: "Como aparecerá seus anúncios",
                    hint: "Exemplo: Rychard S.",
                    isDense: true,
                  ),
                  const SizedBox(height: 16,),
                  FiledTitle(
                    title: "E-mail",
                    subtitle: "Enviaemos um email de confirmação",
                    hint: "Exemplo: rychard@gmail.com",
                    isDense: true,
                    keyboardtype: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16,),
                  FiledTitle(
                    title: "Celular",
                    subtitle: "Proteja sua conta",
                    hint: "(99)99999-9999",
                    isDense: true,
                    keyboardtype: TextInputType.phone,
                  ),
                  const SizedBox(height: 16,),
                  FiledTitle(
                    title: "Senha",
                    subtitle: "Use letras, números e caracteres especiais",
                    isDense: true,
                    obscuretext: true,
                  ),
                  const SizedBox(height: 16,),
                  FiledTitle(
                    title: "Confirmar a Senha",
                    subtitle: "Repita a senha",
                  ),
                  ButtomLoginSignup("Cadastrar"),
                  Divider(color: Colors.black54,),
                  AlreadyRegistered()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
