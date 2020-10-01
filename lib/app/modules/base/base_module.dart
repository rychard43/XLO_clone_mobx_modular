import 'package:xlo_mobx_parse/app/modules/home/home_controller.dart';
import 'package:xlo_mobx_parse/app/modules/home/home_page.dart';

import '../../core/widgets/custom_drawer/custom_drawer_controller.dart';
import 'base_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'base_page.dart';

class BaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomDrawerController()),
        Bind((i) => BaseController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => BasePage()),
        ModularRouter("/home", child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<BaseModule>.of();
}
