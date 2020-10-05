import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_mobx_parse/app/core/extensions/extensions.dart';
import 'package:xlo_mobx_parse/app/core/models/user_model.dart';
import 'package:xlo_mobx_parse/app/core/stores/user_manager_store.dart';
import 'package:xlo_mobx_parse/app/modules/signup/repositories/user_signup_repository_interface.dart';

part 'signup_controller.g.dart';

class SignupController = _SignupControllerBase with _$SignupController;

abstract class _SignupControllerBase with Store {
  final IUserSignupRepository userSignupRepository;
  final userManagerStore = Modular.get<UserManagerStore>();

  _SignupControllerBase(this.userSignupRepository);

  @observable
  String name;

  @action
  void setName(String value) => name = value;

  @computed
  bool get namedValid => name != null && name.length > 6;

  String get nameError {
    if (name == null || namedValid) {
      return null;
    } else if (name.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "Nome muito curto";
    }
  }

  @observable
  String email;

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email.isEmailValid();

  String get emailError {
    if (email == null || emailValid) {
      return null;
    } else if (email.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "E-mail inválido";
    }
  }

  @observable
  String phone;

  @action
  void setPhone(String value) => phone = value;

  @computed
  bool get phoneValid => phone != null && phone.length > 14;

  String get phoneError {
    if (phone == null || phoneValid) {
      return null;
    } else if (phone.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "Celular inválido";
    }
  }

  @observable
  String passMain;

  @action
  void setPassmain(String value) => passMain = value;

  @computed
  bool get passmainValid => passMain != null && passMain.length > 6;

  String get passmainError {
    if (passMain == null || passmainValid) {
      return null;
    } else if (passMain.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "Senha muito curta";
    }
  }

  @observable
  String passVerif;

  @action
  void setPassverif(String value) => passVerif = value;

  @computed
  bool get passverifValid => passVerif != null && passVerif == passMain;

  String get passverifError {
    if (passVerif == null || passverifValid) {
      return null;
    } else if (passVerif.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "Senha diferente";
    }
  }

  @computed
  bool get isFormValid =>
      namedValid && emailValid && phoneValid && passmainValid && passverifValid;

  @computed
  Function get signupPressed => (isFormValid && !loading) ? _signUp : null;

  @observable
  bool loading = false;

  @observable
  String error;

  @action
  Future<void> _signUp() async {
    loading = true;

    final user =
        UserModel(name: name, email: email, phone: phone, password: passMain);

    try {
      final resultUser = await userSignupRepository.signup(user);
      userManagerStore.setUser(resultUser);
    } catch (e) {
      error = e;
    }

    loading = false;
  }
}
