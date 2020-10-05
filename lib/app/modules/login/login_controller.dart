import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_mobx_parse/app/core/extensions/extensions.dart';
import 'package:xlo_mobx_parse/app/core/stores/user_manager_store.dart';
import 'package:xlo_mobx_parse/app/modules/login/repositories/user_login_repository_interface.dart';

import '../../core/models/user_model.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final IUserLoginRepository userLoginRepository;
  final userManagerStore = Modular.get<UserManagerStore>();

  _LoginControllerBase(this.userLoginRepository);

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

  @observable
  String error;

  @action
  Future<void> _login() async {
    loading = true;

    final user = UserModel(email: email, password: passMain);

    try {
      final responseUser = await userLoginRepository.login(user);
      userManagerStore.setUser(responseUser);
    } catch (e) {
      error = e;
    }
    loading = false;
  }
}
