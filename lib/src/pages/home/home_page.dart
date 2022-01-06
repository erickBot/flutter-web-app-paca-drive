import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_web_1/src/pages/home/home_controller.dart';
import 'package:flutter_application_web_1/src/utils/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller = new HomeController();
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.init(context, refresh);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('PACA DRIVE'),
        backgroundColor: MyColors.colorPrimary,
        leading: _buttonDrawer(),
        actions: [
          _seUnConductor(size),
        ],
      ),
      key: _controller.key,
      drawer: _drawer(),
      backgroundColor: MyColors.colorPrimary,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/img/image1.jpg')),
              size > 1300 ? _bodyInfo1() : _bodyInfo2(),
              size > 1300 ? _contacto1() : _contacto2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bodyInfo1() {
    return Container(
      width: double.infinity,
      height: 700,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
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
                    _buttonRequisitos(),
                  ],
                ),
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _cardInfoBeneficios(
                      Icons.monetization_on_sharp,
                      'Gana dinero extra',
                      'Si deseas aumentar tus ingresos o simplemente ganarte la vida (llegar a fin de mes), puedes hacerlo manejando con Paca Drive.',
                    ),
                    _cardInfoBeneficios(
                      Icons.bookmark,
                      'Libertad total',
                      'Con Paca Drive trabajas tanto como quieras, cuando quieras.',
                    ),
                    _cardInfoBeneficios(
                      Icons.phone_callback_outlined,
                      'Soporte las 24 hrs',
                      'Nuestro dedicado equipo de soporte está disponible para responder a todas las consultas 24/7.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyInfo2() {
    return Container(
      width: double.infinity,
      //height: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'MANEJA CON NOSOTROS',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Antes de empezar, has click en el boton y descubre toda la informacion y documentos esenciales\nque necesitas tener listo para registrarte en Paca Drive.',
            style: TextStyle(fontSize: 18, color: Colors.white),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          _buttonRequisitos(),
          SizedBox(height: 20),
          _cardInfoBeneficios(
            Icons.monetization_on_sharp,
            'Gana dinero extra',
            'Si deseas aumentar tus ingresos o simplemente ganarte la vida (llegar a fin de mes), puedes hacerlo manejando con Paca Drive.',
          ),
          _cardInfoBeneficios(
            Icons.bookmark,
            'Libertad total',
            'Con Paca Drive trabajas tanto como quieras, cuando quieras.',
          ),
          _cardInfoBeneficios(
            Icons.phone_callback_outlined,
            'Soporte las 24 hrs',
            'Nuestro dedicado equipo de soporte está disponible para responder a todas las consultas 24/7.',
          ),
        ],
      ),
    );
  }

  Widget _buttonRequisitos() {
    final size = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: _controller.goToRequisitos,
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

  Widget _seUnConductor(double size) {
    return MaterialButton(
      onPressed: _controller.login,
      child: Container(
        width: size > 1300 ? 250 : 150,
        height: size > 1300 ? 40 : 30,
        //margin: EdgeInsets.only(right: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.greenAccent,
        ),
        child: Center(
          child: Text(
            'Se un Conductor',
            style: TextStyle(
              fontSize: size > 1300 ? 18 : 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _cardInfoBeneficios(IconData icon, String title, String message) {
    final size = MediaQuery.of(context).size.width;
    return Card(
      elevation: 1.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: size > 1300 ? 250 : 200,
        height: size > 1300 ? 350 : 250,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size > 1300 ? 50 : 20),
            Icon(
              icon,
              color: MyColors.colorPrimary,
              size: size > 1300 ? 80 : 50,
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                  fontSize: size > 1300 ? 25 : 22, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _contacto1() {
    return Container(
      width: double.infinity,
      height: 130,
      color: Colors.greenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              '¿Necesitas ayuda?',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 60),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'contacto');
            },
            child: Container(
              width: 250,
              height: 50,
              //margin: EdgeInsets.only(right: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  'Contáctanos',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _contacto2() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.greenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              '¿Necesitas ayuda?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 60),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'contacto');
            },
            child: Container(
              width: 180,
              height: 30,
              //margin: EdgeInsets.only(right: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  'Contáctanos',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonDrawer() {
    return Container(
      alignment: Alignment.centerLeft,
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: IconButton(
        onPressed: _controller.openDrawer,
        icon: Icon(Icons.menu, color: Colors.white),
      ),
    );
  }

  Widget _drawer() {
    final size = MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            // child: Container(
            //   // width: 60,
            //   // height: 60,
            //   child: Image(
            //     image: AssetImage('assets/img/icon.png'),
            //   ),
            // ),

            child: Container(
              child: Icon(
                Icons.drive_eta_rounded,
                size: size > 1300 ? 120 : 100,
                color: MyColors.colorPrimary,
              ),
            ),
          ),
          _listTile('Inicio', 'home'),
          _listTile('Quienes Somos', 'description'),
          _listTile('Se un conductor', 'conductor'),
          _listTile('Promociones', 'promocion'),
          _listTile('Política de privacidad', 'politicas'),
          _listTile('Términos y condiciones', 'condiciones'),
          _listTile('Ayuda', 'help'),
        ],
      ),
    );
  }

  Widget _listTile(String element, String route) {
    final size = MediaQuery.of(context).size.width;
    return ListTile(
      title: Text(element,
          style: TextStyle(
              fontSize: size > 1300 ? 24 : 20, color: MyColors.colorPrimary)),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }

  void refresh() {
    setState(() {});
  }
}
