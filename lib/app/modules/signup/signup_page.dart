import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:xlo_mobx_parse/app/core/widgets/buttom_login_signup/buttom_login_signup.dart';
import 'package:xlo_mobx_parse/app/core/widgets/error_box/error_box.dart';
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
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
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
                    Observer(builder: (_){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ErrorBox(
                          message: controller.error,
                        ),
                      );
                    }),
                    Observer(builder: (_) {
                      return FiledTitle(
                        enableTextField: !controller.loading,
                        title: "Apelido",
                        subtitle: "Como aparecerá seus anúncios",
                        hint: "Exemplo: Rychard S.",
                        isDense: true,
                        callback: controller.setName,
                        errorText: controller.nameError,
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(
                      builder: (_) {
                        return FiledTitle(
                          enableTextField: !controller.loading,
                          title: "E-mail",
                          subtitle: "Enviaemos um email de confirmação",
                          hint: "Exemplo: rychard@gmail.com",
                          isDense: true,
                          keyboardtype: TextInputType.emailAddress,
                          callback: controller.setEmail,
                          errorText: controller.emailError,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(builder: (_) {
                      return FiledTitle(
                        enableTextField: !controller.loading,
                        title: "Celular",
                        subtitle: "Proteja sua conta",
                        hint: "(99)99999-9999",
                        isDense: true,
                        keyboardtype: TextInputType.phone,
                        callback: controller.setPhone,
                        errorText: controller.phoneError,
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(builder: (_) {
                      return FiledTitle(
                        enableTextField: !controller.loading,
                        title: "Senha",
                        subtitle: "Use letras, números e caracteres especiais",
                        isDense: true,
                        obscuretext: true,
                        callback: controller.setPassmain,
                        errorText: controller.passmainError,
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(
                      builder: (_) {
                        return FiledTitle(
                          enableTextField: !controller.loading,
                          title: "Confirmar a Senha",
                          subtitle: "Repita a senha",
                          callback: controller.setPassverif,
                          errorText: controller.passverifError,
                          obscuretext: true,
                        );
                      },
                    ),
                    Observer(
                      builder: (_) {
                        return ButtomLoginSignup(
                          text: "Cadastrar",
                          turnOnButtom: controller.signupPressed,
                          loading: controller.loading,
                        );
                      },
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                    AlreadyRegistered()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
