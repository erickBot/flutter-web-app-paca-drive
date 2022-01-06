import 'package:flutter/cupertino.dart';
import 'package:flutter_application_web_1/src/models/user_driver.dart';
import 'package:flutter_application_web_1/src/providers/authentication_provider.dart';
import 'package:flutter_application_web_1/src/providers/driver_provider.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

class DriverRegistroController {
  BuildContext context;
  Function refresh;

  TextEditingController nameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController breveteController = new TextEditingController();
  TextEditingController placaVehiculoController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confPasswordController = new TextEditingController();
  TextEditingController modeloVehiculoController = new TextEditingController();

  TextEditingController pin1Controller = new TextEditingController();
  TextEditingController pin2Controller = new TextEditingController();
  TextEditingController pin3Controller = new TextEditingController();
  TextEditingController pin4Controller = new TextEditingController();
  TextEditingController pin5Controller = new TextEditingController();
  TextEditingController pin6Controller = new TextEditingController();

  AuthFirebaseProvider _authFirebase;
  DriverProvider _driverProvider;
  ProgressDialog _progressDialog;
  List<String> services = ['taxi', 'mototaxi'];
  String nameService;
  String placa;

  Future init(BuildContext context, Function refresh) {
    this.context = context;
    this.refresh = refresh;
    _authFirebase = new AuthFirebaseProvider();
    _driverProvider = new DriverProvider();
    _progressDialog = new ProgressDialog(context: context);
  }

  void registro() async {
    String name = nameController.text;
    String lastName = lastNameController.text;
    String email = emailController.text.trim();
    String phone = phoneController.text.trim();
    String brevete = breveteController.text.trim();
    String password =
        passwordController.text.trim(); //trim para evitar los espacion
    String confPassword =
        confPasswordController.text.trim(); //trim para evitar los espacion
    String tipoVehiculo = nameService;
    String modeloVehiculo = modeloVehiculoController.text;
    String pin1 = pin1Controller.text.trim();
    String pin2 = pin2Controller.text.trim();
    String pin3 = pin3Controller.text.trim();
    String pin4 = pin4Controller.text.trim();
    String pin5 = pin5Controller.text.trim();
    String pin6 = pin6Controller.text.trim();

    if (nameService == 'taxi') {
      placa = '$pin1$pin2$pin3-$pin4$pin5$pin6';
    } else if (nameService == 'mototaxi') {
      placa = '$pin1$pin2$pin3$pin4-$pin5$pin6';
    }

    print('name: $name');
    print('password: $password');
    print('email: $email');
    print('password: $confPassword');

    if (name.isEmpty &&
        lastName.isEmpty &&
        phone.isEmpty &&
        brevete.isEmpty &&
        email.isEmpty &&
        placa.isEmpty &&
        password.isEmpty &&
        tipoVehiculo.isEmpty &&
        modeloVehiculo.isEmpty &&
        confPassword.isEmpty) {
      print('el usuario debe ingresar todos los campos');
      //MySnackbar.show(context, 'Debe ingresar todos los campos');
      return;
    }

    if (password != confPassword) {
      print('password no coinciden');
      //MySnackbar.show(context, 'Las contrasenas no coinciden');
      return;
    }

    if (password.length < 6) {
      print('password debe tener 6 caracteres');
      //MySnackbar.show(context, 'La contrasena debe tener minimo 6 caracteres');
      return;
    }

    try {
      _progressDialog.show(max: 100, msg: 'Espere un momento');
      bool isCreate = await _authFirebase.register(email, password);

      if (isCreate) {
        //crea objeto client
        Driver driver = new Driver(
          id: _authFirebase.getUser().uid, //id del login de firebase
          name: name,
          lastname: lastName,
          phone: phone,
          numberbrevete: brevete,
          placaVehiculo: placa,
          tipoVehiculo: tipoVehiculo,
          modeloVehiculo: modeloVehiculo,
          email: email,
          quantityTravel: 0,
          imageUrl: '',
          suscription: 5.0, //suscription de regalo
        );

        await _driverProvider.create(driver);
        print('Usuario fue creado con exito');
        _progressDialog.close();
      } else {
        print('Error al crear usuario');
        _progressDialog.close();
      }
    } catch (error) {
      print('Error: $error');
      _progressDialog.close();
      //MySnackbar.show(context, '$error');
    }
  }


}
