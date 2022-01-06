import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/src/pages/home/home_page.dart';
import 'package:flutter_application_web_1/src/pages/login/login_page.dart';
import 'package:flutter_application_web_1/src/pages/registro/driver_registro_page.dart';
import 'package:flutter_application_web_1/src/widgets/condiciones.dart';
import 'package:flutter_application_web_1/src/widgets/contacto.dart';
import 'package:flutter_application_web_1/src/widgets/politicas.dart';
import 'package:flutter_application_web_1/src/widgets/requisitos.dart';
import 'package:flutter_application_web_1/src/widgets/se_un_conductor_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paca drive web',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'requisitos': (BuildContext context) => RequisitosPage(),
        'driver/registro': (BuildContext context) => DriverRegistroPage(),
        'login': (BuildContext context) => LoginPage(),
        'politicas': (BuildContext context) => PoliticasPrivacidad(),
        'condiciones': (BuildContext context) => TerminosYcondiciones(),
        'se_conductor': (BuildContext context) => SeUnConductorPage(),
        'contacto': (BuildContext context) => CentroDeContacto(),
      },
    );
  }
}
