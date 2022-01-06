import 'package:flutter/material.dart';

import 'package:flutter_application_web_1/src/utils/colors.dart';

class RequsitosPage2 extends StatefulWidget {
  @override
  _RequsitosPage2State createState() => _RequsitosPage2State();
}

class _RequsitosPage2State extends State<RequsitosPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Centro de ayuda Paca Drive'),
        backgroundColor: MyColors.colorPrimary,
        leading: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  _titulo('REQUISITOR PARA SER UN CONDUCTOR PACA DRIVE'),
                  _description(
                      'En este artículo podrás encontrar toda la información necesaria '
                      'para completar tu registro de manera exitosa. Recuerda que para '
                      'registrarte como usuario conductor debes contar con una edad entre 18 y 70 años.'),
                  _subTitulo('1. Documento Nacional de Identidad'),
                  _iconImage('assets/img/driver_dni.jpg'),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _description(
                            'Se aceptan los siguientes documentos del extranjero'),
                        _item('Carnet de extranjeria'),
                        _item('Permiso temporal de permanencia'),
                        _item('Carnet de refugiados'),
                        _recomendaciones(),
                        Row(
                          children: <Widget>[
                            _iconItem(),
                            SizedBox(width: 20),
                            Text(
                              'Se debe visualizar las 4 esquinas del documento con el fin de\n'
                              'no omitir información. Asegurate de que todos los datos se vean\n'
                              'claramente.',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _subTitulo('2. Licencia de conducir'),
                  _iconImage('assets/img/driver_licence.png'),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _recomendaciones(),
                        Row(
                          children: <Widget>[
                            _iconItem(),
                            SizedBox(width: 20),
                            Text(
                              'Se debe visualizar las 4 esquinas del documento con el fin de\n'
                              'no omitir información. Asegurate de que todos los datos se vean\n'
                              'claramente.',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _iconItem(),
                            SizedBox(width: 20),
                            Text(
                              'Si recién tramitaste tu licencia de conducir, asegúrate de que esta\n'
                              'ya se encuentre registrada en la web del MTC.',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _subTitulo('3. SOAT'),
                  _iconImage('assets/img/icon_soat.png'),
                  SizedBox(height: 10),
                  _description(
                      'Puedes subir la versión física o electrónica de tu SOAT vigente, ten en cuenta que todos los datos deben verse completos y nítidos:'),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _item('Entidad aseguradora.'),
                        _item('Placa.'),
                        SizedBox(height: 10),
                        _description(
                            'Puedes subir el documento en formato digital o físico (escaneado).'),
                        _recomendaciones(),
                        Row(
                          children: <Widget>[
                            _iconItem(),
                            SizedBox(width: 20),
                            Text(
                              'En caso optes por el formato vitual (PDF ó captura de pantalla) puedes\n'
                              'anexar la tarjeta de propiedad del vehículo por la parte posterior\n'
                              '(Datos vehiculares).',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _subTitulo('4. El vehiculo'),
                  _iconImage('assets/img/icon_car.png'),
                  SizedBox(height: 10),
                  _description(
                      'Tu auto o mototaxi debe estar en perfecto estado, sea propio o alquilado, el mismo que debe estar limpio y ordenado.'),
                  _subTitulo('5. Foto de perfil'),
                  _iconImage('assets/img/user_man.jpg'),
                  SizedBox(height: 10),
                  _description(
                      'Deberás subir una foto donde se vea tu rostro de manera frontal. Ten en cuenta lo siguiente:'),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _item('Evita objetos que cubran el rostro.'),
                        _item('Sube la foto desde tu teléfono.'),
                        _item(
                            'No se aceptan fotos tomadas a pantallas o a otras fotos.'),
                        Row(
                          children: <Widget>[
                            _iconItem(),
                            SizedBox(width: 20),
                            Text(
                              'Asegúrate de estar en un lugar iluminado, para que tu rostro se\n'
                              'vea claramente.',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _endPage(),
          ],
        ),
      ),
    );
  }

  Widget _titulo(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: MyColors.colorPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _subTitulo(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: MyColors.colorPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _recomendaciones() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        'Recomendaciones',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _description(String description) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        description,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _item(String item) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Icon(Icons.play_arrow_outlined),
          SizedBox(width: 20),
          Text(
            item,
            style: TextStyle(
              fontSize: 12,
            ),
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  Widget _iconItem() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Icon(Icons.play_arrow_outlined),
    );
  }

  Widget _iconImage(String icon) {
    return Container(
      width: double.infinity,
      child: Container(
        width: 120,
        height: 120,
        child: Image.asset(icon),
        alignment: Alignment.center,
      ),
    );
  }

  Widget _endPage() {
    return Container(
      width: double.infinity,
      height: 150,
      color: MyColors.colorPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'PACA DRIVE',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Icon(
            Icons.local_car_wash_rounded,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
