// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupController on _SignupControllerBase, Store {
  Computed<bool> _$namedValidComputed;

  @override
  bool get namedValid =>
      (_$namedValidComputed ??= Computed<bool>(() => super.namedValid,
              name: '_SignupControllerBase.namedValid'))
          .value;
  Computed<bool> _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_SignupControllerBase.emailValid'))
          .value;
  Computed<bool> _$phoneValidComputed;

  @override
  bool get phoneValid =>
      (_$phoneValidComputed ??= Computed<bool>(() => super.phoneValid,
              name: '_SignupControllerBase.phoneValid'))
          .value;
  Computed<bool> _$passmainValidComputed;

  @override
  bool get passmainValid =>
      (_$passmainValidComputed ??= Computed<bool>(() => super.passmainValid,
              name: '_SignupControllerBase.passmainValid'))
          .value;
  Computed<bool> _$passverifValidComputed;

  @override
  bool get passverifValid =>
      (_$passverifValidComputed ??= Computed<bool>(() => super.passverifValid,
              name: '_SignupControllerBase.passverifValid'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignupControllerBase.isFormValid'))
          .value;
  Computed<Function> _$signupPressedComputed;

  @override
  Function get signupPressed =>
      (_$signupPressedComputed ??= Computed<Function>(() => super.signupPressed,
              name: '_SignupControllerBase.signupPressed'))
          .value;

  final _$nameAtom = Atom(name: '_SignupControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_SignupControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$phoneAtom = Atom(name: '_SignupControllerBase.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$passMainAtom = Atom(name: '_SignupControllerBase.passMain');

  @override
  String get passMain {
    _$passMainAtom.reportRead();
    return super.passMain;
  }

  @override
  set passMain(String value) {
    _$passMainAtom.reportWrite(value, super.passMain, () {
      super.passMain = value;
    });
  }

  final _$passVerifAtom = Atom(name: '_SignupControllerBase.passVerif');

  @override
  String get passVerif {
    _$passVerifAtom.reportRead();
    return super.passVerif;
  }

  @override
  set passVerif(String value) {
    _$passVerifAtom.reportWrite(value, super.passVerif, () {
      super.passVerif = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SignupControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$errorAtom = Atom(name: '_SignupControllerBase.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$_signUpAsyncAction = AsyncAction('_SignupControllerBase._signUp');

  @override
  Future<void> _signUp() {
    return _$_signUpAsyncAction.run(() => super._signUp());
  }

  final _$_SignupControllerBaseActionController =
      ActionController(name: '_SignupControllerBase');

  @override
  void setName(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction(
        name: '_SignupControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction(
        name: '_SignupControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction(
        name: '_SignupControllerBase.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassmain(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction(
        name: '_SignupControllerBase.setPassmain');
    try {
      return super.setPassmain(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassverif(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction(
        name: '_SignupControllerBase.setPassverif');
    try {
      return super.setPassverif(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
phone: ${phone},
passMain: ${passMain},
passVerif: ${passVerif},
loading: ${loading},
error: ${error},
namedValid: ${namedValid},
emailValid: ${emailValid},
phoneValid: ${phoneValid},
passmainValid: ${passmainValid},
passverifValid: ${passverifValid},
isFormValid: ${isFormValid},
signupPressed: ${signupPressed}
    ''';
  }
}
