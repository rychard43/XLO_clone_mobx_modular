import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:xlo_mobx_parse/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await inicializedParse();
  runApp(ModularApp(module: AppModule()));
}

Future inicializedParse() async {
  await Parse().initialize(
    "MexZPCuuwIEMUoDgN8WzipXdMwM88DUeuRiV0xt0",
    "https://parseapi.back4app.com/",
    clientKey: "ja7Rsq9Dg9b7apTmgjO15cI9p06AlnDexjOjENub",
    autoSendSessionId: true,
    debug: true,
  );
}
