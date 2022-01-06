import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/src/utils/colors.dart';

class CentroDeContacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Información de contacto'),
        backgroundColor: MyColors.colorPrimary,
        leading: Container(),
      ),
      body: size > 1300 ? Screen1() : Screen2(),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 500,
                //margin: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/img/contacto1.jpg'),
              ),
              SizedBox(width: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _informacionContacto(Icons.location_on_rounded,
                        'Calle Los Melones MZ C15, lote09, urb. Las Palmeras, Castilla, Piura'),
                    _informacionContacto(
                        Icons.email_rounded, 'paca.systems.ventas@gmail.com'),
                    _informacionContacto(
                        Icons.phone_android_outlined, '+51 961650984'),
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: MyColors.colorPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'PACA DRIVE',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                SizedBox(width: 100),
                Image.asset('assets/img/icon_2.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _informacionContacto(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 20),
          Text(text),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 335,
            //margin: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset('assets/img/contacto1.jpg'),
          ),
          SizedBox(height: 20),
          _informacionContacto(Icons.location_on_rounded,
              'Calle Los Melones MZ C15, lote09, urb. Las Palmeras, Castilla, Piura'),
          _informacionContacto(
              Icons.email_rounded, 'paca.systems.ventas@gmail.com'),
          _informacionContacto(Icons.phone_android_outlined, '+51 961650984'),
          SizedBox(height: 20),
          Container(
            height: 100,
            width: double.infinity,
            color: MyColors.colorPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'PACA DRIVE',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                SizedBox(width: 20),
                Image.asset('assets/img/icon_2.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _informacionContacto(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
