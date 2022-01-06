import 'package:flutter/material.dart';

class HomeController {
  BuildContext context;
  Function refresh;

  GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();

  Future init(BuildContext context, Function refresh) {
    this.context = context;
    this.refresh = refresh;
  }

  void openDrawer() {
    key.currentState.openDrawer();
  }

  void goToRequisitos() {
    Navigator.pushNamed(context, 'requisitos');
  }

  void login() {
    Navigator.pushNamed(context, 'se_conductor');
  }
}
