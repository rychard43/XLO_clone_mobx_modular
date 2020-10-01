import 'signup_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'signup_page.dart';

class SignupModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SignupController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SignupPage()),
      ];

  static Inject get to => Inject<SignupModule>.of();
}
