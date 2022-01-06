import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/src/widgets/requisitos_screen1.dart';
import 'package:flutter_application_web_1/src/widgets/requisitos_screen2.dart';

class RequisitosPage extends StatefulWidget {
  @override
  _RequisitosPageState createState() => _RequisitosPageState();
}

class _RequisitosPageState extends State<RequisitosPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return size > 1330 ? RequsitosPage1() : RequsitosPage2();
  }
}
