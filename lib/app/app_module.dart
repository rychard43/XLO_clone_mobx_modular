import 'package:xlo_mobx_parse/app/modules/base/base_controller.dart';
import 'package:xlo_mobx_parse/app/modules/base/base_module.dart';
import 'package:xlo_mobx_parse/app/modules/login/login_controller.dart';
import 'package:xlo_mobx_parse/app/modules/login/login_module.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:xlo_mobx_parse/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BaseController()),
        Bind((i) => AppController()),
        Bind((i) => LoginController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: BaseModule()),
        ModularRouter("/login", module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
