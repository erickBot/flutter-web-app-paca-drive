import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/src/models/user_client.dart';
import 'package:flutter_application_web_1/src/models/user_driver.dart';
import 'package:flutter_application_web_1/src/providers/authentication_provider.dart';
import 'package:flutter_application_web_1/src/providers/client_provider.dart';
import 'package:flutter_application_web_1/src/providers/driver_provider.dart';
import 'package:flutter_application_web_1/src/utils/mySnackbar.dart';
import 'package:flutter_application_web_1/src/utils/shared_preferences.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

class LoginController {
  BuildContext context;
  Function refresh;
  ProgressDialog _progressDialog;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  SharedPref _sharedPref;
  ClientProvider _clientProvider;
  DriverProvider _driverProvider;
  String _typeUser;
  Driver driver;
  Client client;

  AuthFirebaseProvider _authFirebase;

  Future init(BuildContext context, Function refresh) async {
    this.context = context;
    this.refresh = refresh;
    _authFirebase = new AuthFirebaseProvider();
    _clientProvider = new ClientProvider();
    _driverProvider = new DriverProvider();
    _progressDialog = new ProgressDialog(context: context);
    _sharedPref = new SharedPref();
    // _typeUser = await _sharedPref.read('typeUser');
    // print('TIPO USUARIO:$_typeUser');
  }

  void login() async {
    print('click');
    String email = emailController.text.trim();
    String password =
        passwordController.text.trim(); //trim para evitar los espacios

    try {
      //_progressDialog.show(max: 100, msg: 'Espere un momento');
      print('$email - $password');
      bool isLogin = await _authFirebase.login(email, password);
      // print(isLogin);

      if (isLogin) {
        client = await _clientProvider.getByUserId(_authFirebase.getUser().uid);
        if (client != null) {
          _sharedPref.save('user', client.toJson());
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushNamedAndRemoveUntil(
                context, 'home', (route) => false);
          });
          print('user: ${client.toJson()}');
        } else {
          MySnackbar.show(context, 'Usuario no valido');
          await _authFirebase.signOut();
        }
      } else {
        print('Usuario no registrado');
        //_progressDialog.close();
        MySnackbar.show(context, 'Usuario no registrado');
      }
    } catch (error) {
      print('Error: $error');
      // _progressDialog.close();
      MySnackbar.show(context, '$error');
    }
  }

  void goToRegister() {
    Navigator.pushNamed(context, 'driver/registro');
  }

  void back() {
    Navigator.pop(context);
  }
}
