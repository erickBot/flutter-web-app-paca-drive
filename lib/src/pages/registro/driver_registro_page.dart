import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_web_1/src/pages/registro/driver_registro_controller.dart';
import 'package:flutter_application_web_1/src/utils/colors.dart';
import 'package:flutter_application_web_1/src/widgets/otp_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DriverRegistroPage extends StatefulWidget {
  @override
  _DriverRegistroPageState createState() => _DriverRegistroPageState();
}

class _DriverRegistroPageState extends State<DriverRegistroPage> {
  DriverRegistroController _controller = new DriverRegistroController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.init(context, refresh);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRO DE CONDUCTOR'),
        backgroundColor: MyColors.colorPrimary,
        leading: Container(),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            //margin: EdgeInsets.only(left: 430),
            alignment: Alignment.center,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // _encabezado(context),
                  SizedBox(height: 50),
                  _mensajeRegistro(),
                  _inputPlacaVehiculo(),
                  SizedBox(height: 5),
                  _dropDownServices(_controller.services),
                  _inputModeloVehiculo(),
                  _inputNombres(),
                  _inputApellidos(),
                  _inputPhone(),
                  _inputBrevete(),
                  _inputEmail(),
                  _inputPassword(),
                  _inputConfirmarPassword(),
                  SizedBox(height: 20),
                  _terminosYcondiciones(),
                  SizedBox(height: 40),
                  _buttonEnviar(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new_outlined),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _mensajeRegistro() {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          'Crear una cuenta nueva de conductor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _inputNombres() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller.nameController,
        decoration: InputDecoration(
          labelText: 'Nombres',
          labelStyle: TextStyle(color: MyColors.colorPrimary),
          suffixIcon: Icon(
            Icons.person_outline,
            color: MyColors.colorPrimary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.colorPrimary),
          ),
        ),
      ),
    );
  }

  Widget _inputApellidos() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller.lastNameController,
        decoration: InputDecoration(
          labelText: 'Apellidos',
          labelStyle: TextStyle(color: MyColors.colorPrimary),
          suffixIcon: Icon(
            Icons.person_add_alt_outlined,
            color: MyColors.colorPrimary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.colorPrimary),
          ),
        ),
      ),
    );
  }

  Widget _inputBrevete() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller.breveteController,
        decoration: InputDecoration(
          labelText: 'Numero Licencia Conducir',
          labelStyle: TextStyle(color: MyColors.colorPrimary),
          suffixIcon: Icon(
            Icons.book_outlined,
            color: MyColors.colorPrimary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.colorPrimary),
          ),
        ),
      ),
    );
  }

  Widget _inputPhone() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller.phoneController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Número celular',
          labelStyle: TextStyle(color: MyColors.colorPrimary),
          suffixIcon: Icon(
            Icons.phone_android_outlined,
            color: MyColors.colorPrimary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.colorPrimary),
          ),
        ),
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller.emailController,
        decoration: InputDecoration(
          hintText: 'example@email.com',
          labelText: 'Correo electrónico',
          labelStyle: TextStyle(color: MyColors.colorPrimary),
          suffixIcon: Icon(
            Icons.email_outlined,
            color: MyColors.colorPrimary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.colorPrimary),
          ),
        ),
      ),
    );
  }

  Widget _inputModeloVehiculo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller.modeloVehiculoController,
        decoration: InputDecoration(
          labelText: 'Marca y modelo vehículo',
          labelStyle: TextStyle(color: MyColors.colorPrimary),
          suffixIcon: Icon(
            Icons.car_repair,
            color: MyColors.colorPrimary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.colorPrimary),
          ),
        ),
      ),
    );
  }

  Widget _dropDownServices(List<String> services) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Material(
        elevation: 2.0,
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            //padding: EdgeInsets.symmetric(horizontal: 0),
            child: DropdownButton(
              underline: Container(
                alignment: Alignment.centerRight,
                child: Icon(Icons.arrow_drop_down_circle,
                    color: MyColors.colorPrimary),
              ),
              elevation: 3,
              isExpanded: true,
              hint: Text(
                'Selecciona un tipo de servicio',
                style: TextStyle(color: MyColors.colorPrimary, fontSize: 16),
              ),
              items: _dropDwonItem(services),
              value: _controller.nameService,
              onChanged: (option) {
                _controller.nameService = option;
                print(_controller.nameService);
                refresh();
              },
            ),
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _dropDwonItem(List<String> services) {
    List<DropdownMenuItem<String>> list = [];
    services.forEach((service) {
      list.add(DropdownMenuItem(
        child: Text(service),
        value: service,
      ));
    });

    return list;
  }

  Widget _inputPlacaVehiculo() {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment.centerLeft,
          child: Text(
            'Matricula vehículo (placa vehículo)',
            style: TextStyle(color: MyColors.colorPrimary, fontSize: 18),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 300),
          child: OTPFields(
            pin1: _controller.pin1Controller,
            pin2: _controller.pin2Controller,
            pin3: _controller.pin3Controller,
            pin4: _controller.pin4Controller,
            pin5: _controller.pin5Controller,
            pin6: _controller.pin6Controller,
          ),
        ),
      ],
    );
  }

  Widget _inputPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller.passwordController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          labelStyle: TextStyle(color: MyColors.colorPrimary),
          suffixIcon: Icon(
            Icons.lock_outlined,
            color: MyColors.colorPrimary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.colorPrimary),
          ),
        ),
      ),
    );
  }

  Widget _inputConfirmarPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller.confPasswordController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Confirmar contraseña',
          labelStyle: TextStyle(color: MyColors.colorPrimary),
          suffixIcon: Icon(
            Icons.lock,
            color: MyColors.colorPrimary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.colorPrimary),
          ),
        ),
      ),
    );
  }

  Widget _terminosYcondiciones() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        child: Row(
          children: [
            Text('Al registrarte estás aceptando los',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            Text('Términos y Condiciones',
                style: TextStyle(
                  color: MyColors.colorPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
          ],
        ),
        onTap: () {
          launch('https://terminosya.com/terminos-y-condiciones/1639085787');
        },
      ),
    );
  }

  Widget _buttonEnviar() {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        width: 250.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.colorPrimary,
        ),
        child: Center(
          child: Text(
            'ENVIAR REGISTRO',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  void refresh() {
    setState(() {});
  }
}
