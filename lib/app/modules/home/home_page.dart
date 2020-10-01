import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:xlo_mobx_parse/app/core/widgets/custom_drawer/custom_drawer_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[],
        ),
        drawer: CustomDrawerWidget(),
      ),
    );
  }
}
