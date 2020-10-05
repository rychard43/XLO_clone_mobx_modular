import 'package:mobx/mobx.dart';
import 'package:xlo_mobx_parse/app/core/extensions/extensions.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String email;

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email.isEmailValid();

  String get emailError =>
      email == null || emailValid ? null : "Email inválido";

  @observable
  String passMain;

  @action
  void setPassmain(String value) => passMain = value;

  @computed
  bool get passmainValid => passMain != null && passMain.length > 4;

  String get passmainError =>
      passMain == null || passmainValid ? null : 'Senha inválida';

  @computed
  Function get loginPressed =>
      emailValid && passmainValid && !loading ? _login : null;

  @observable
  bool loading = false;

  @action
  Future<void> _login() async {
    loading = true;

    await Future.delayed(Duration(seconds: 3));

    loading = false;
  }
}
