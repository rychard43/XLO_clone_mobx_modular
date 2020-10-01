import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_mobx_parse/app/modules/home/home_page.dart';
import 'base_controller.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends ModularState<BasePage, BaseController> {
  //use 'controller' variable to access controller

  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    reaction(
      (_) => controller.page, //quem esta observando
      (page) => _pageController.jumpToPage(page), //efeito (oq vai acontecer quando mudar)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomePage(),
          Container(color: Colors.green,),
          Container(color: Colors.white,),
          Container(color: Colors.red,),
          Container(color: Colors.yellow,),
        ],
      ),
    );
  }
}
