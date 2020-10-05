import 'core/stores/user_manager_store.dart';
import 'package:xlo_mobx_parse/app/modules/base/base_controller.dart';
import 'package:xlo_mobx_parse/app/modules/base/base_module.dart';
import 'package:xlo_mobx_parse/app/modules/login/login_controller.dart';
import 'package:xlo_mobx_parse/app/modules/login/repositories/user_login_repository.dart';
import 'package:xlo_mobx_parse/app/modules/login/repositories/user_login_repository_interface.dart';
import 'package:xlo_mobx_parse/app/modules/signup/repositories/user_signup_repository.dart';
import 'package:xlo_mobx_parse/app/modules/signup/signup_controller.dart';
import 'package:xlo_mobx_parse/app/modules/login/login_module.dart';
import 'package:xlo_mobx_parse/app/modules/signup/signup_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:xlo_mobx_parse/app/app_widget.dart';

import 'modules/signup/repositories/user_signup_repository_interface.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BaseController(),singleton: true),
        Bind((i) => LoginController(i.get())),
        Bind((i) => SignupController(i.get())),
        Bind<IUserSignupRepository>((i) => UserSignupRepository()),
        Bind<IUserLoginRepository>((i) => UserLoginRepository()),
        Bind((i) => UserManagerStore(), singleton: true),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: BaseModule()),
        ModularRouter("/login", module: LoginModule()),
        ModularRouter("/signup", module: SignupModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
