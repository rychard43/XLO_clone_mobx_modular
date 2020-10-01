import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:xlo_mobx_parse/app/core/widgets/buttom_login_signup/buttom_login_signup.dart';
import 'package:xlo_mobx_parse/app/modules/login/components/email_field.dart';
import 'package:xlo_mobx_parse/app/modules/login/components/password_field.dart';
import 'package:xlo_mobx_parse/app/modules/login/components/signup_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key key, this.title = "Entrar"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Acessar com Email: ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[900],
                    ),
                  ),
                  EmailField(),
                  SizedBox(
                    height: 16,
                  ),
                  PasswordField(),
                  const SizedBox(
                    height: 4,
                  ),
                  ButtomLoginSignup("Entrar"),
                  Divider(color: Colors.black54,),
                  SignupField(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
