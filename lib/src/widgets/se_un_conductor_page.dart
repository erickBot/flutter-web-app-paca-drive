import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/src/utils/colors.dart';

class SeUnConductorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Se un Conductor Paca Drive'),
        backgroundColor: MyColors.colorPrimary,
        leading: Container(),
      ),
      backgroundColor: MyColors.colorPrimary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            size > 1300 ? _body1(context) : _body2(context),
            _sendEmail(size),
            SizedBox(height: 20),
            Container(
              height: size > 1300 ? 400 : 200,
              child: Image.asset('assets/img/driver1.jpg'),
              alignment: Alignment.center,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _body1(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 700,
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'MANEJA CON NOSOTROS',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Antes de empezar, has click en el boton y descubre toda la informacion y documentos esenciales\nque necesitas tener listo para registrarte en Paca Drive.',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    maxLines: 2,
                  ),
                  Spacer(),
                  _buttonRequisitos(context),
                ],
              ),
            ]),
      ),
    );
  }

  Widget _body2(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 700,
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'MANEJA CON NOSOTROS',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Antes de empezar, has click en el boton y descubre toda la informacion y documentos esenciales\nque necesitas tener listo para registrarte en Paca Drive.',
                style: TextStyle(fontSize: 16, color: Colors.white),
                maxLines: 2,
              ),
              _buttonRequisitos(context),
            ]),
      ),
    );
  }

  Widget _sendEmail(double size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
          'Envianos un correo electrónico a paca.systems.ventas@gmail.com con toda la información solicitada en los requisitos para ser un conductor (documentos escaneados),'
          ' y número de teléfono celular.\n\n'
          'En breve le responderemos.',
          style:
              TextStyle(color: Colors.white, fontSize: size > 1300 ? 18 : 16)),
    );
  }

  Widget _buttonRequisitos(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, 'requisitos');
      },
      child: Container(
        width: size > 1300 ? 250 : 200,
        height: size > 1300 ? 50 : 30,
        margin: size > 1300 ? EdgeInsets.only(right: 40) : EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.greenAccent,
        ),
        child: Center(
          child: Text(
            'Requisitos de Conductor',
            style: TextStyle(
              fontSize: size > 1300 ? 18 : 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
