import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_application_web_1/src/pages/login/login_controller.dart';
import 'package:flutter_application_web_1/src/utils/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _controller = new LoginController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.init(context, refresh);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SimpleDialog(
      title: Text('LOGIN'),
      children: <Widget>[
        SizedBox(height: size.height * 0.18),
        SizedBox(height: 40),
        _inputEmail(),
        _inputPassword(),
        SizedBox(height: 40),
        _button(),
        SizedBox(height: 20),
        _texto(),
      ],
    );
  }

  //   return Dialog(
  //     child: Padding(
  //       padding: const EdgeInsets.all(50.0),
  //       child: Container(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             SizedBox(height: size.height * 0.2),
  //             Text(
  //               'INICIAR SESION',
  //               style: TextStyle(fontSize: 24),
  //             ),
  //             SizedBox(height: 40),
  //             _inputEmail(),
  //             _inputPassword(),
  //             SizedBox(height: 40),
  //             _button(),
  //             SizedBox(height: 20),
  //             _texto(),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     body: Stack(
  //       children: [
  //         SingleChildScrollView(
  //           child: Column(
  //             //crossAxisAlignment: CrossAxisAlignment.start,
  //             children: <Widget>[
  //               SizedBox(height: size.height * 0.2),
  //               Text(
  //                 'INICIAR SESION',
  //                 style: TextStyle(fontSize: 24),
  //               ),
  //               SizedBox(height: 40),
  //               _inputEmail(),
  //               _inputPassword(),
  //               SizedBox(height: 40),
  //               _button(),
  //               SizedBox(height: 20),
  //               _texto(),
  //             ],
  //           ),
  //         ),
  //         // Positioned(
  //         //   top: -90,
  //         //   left: -120,
  //         //   //child: size.height > 700 ? _circulo1() : _circulo2(),
  //         // ),
  //         // Positioned(
  //         //   top: size.height > 700 ? 75 : 40,
  //         //   left: 20,
  //         //   child: _mensajeLogin(),
  //         // ),
  //         Positioned(
  //           top: size.height > 700 ? 81 : 46,
  //           child: IconButton(
  //             onPressed: _controller.back,
  //             icon: Icon(Icons.arrow_back_ios_new_outlined),
  //             color: Colors.white,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget _mensajeLogin() {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.only(top: 20),
        child: Text(
          'LOGIN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: 400,
      child: TextField(
        controller: _controller.emailController,
        decoration: InputDecoration(
          hintText: 'example@email.com',
          labelText: 'Correo electronico',
          suffixIcon: Icon(
            Icons.email_outlined,
            color: MyColors.colorPrimary,
          ),
        ),
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      width: 400,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextField(
        controller: _controller.passwordController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Contrasena',
          suffixIcon: Icon(
            Icons.lock_outlined,
            color: MyColors.colorPrimary,
          ),
        ),
      ),
    );
  }

  Widget _button() {
    return MaterialButton(
      onPressed: _controller.login,
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.colorPrimary,
        ),
        child: Center(
          child: Text(
            'INICIAR SESION',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _texto() {
    return GestureDetector(
      onTap: _controller.goToRegister,
      child: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Text(
            '¿No tienes una cuenta?',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 18,
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
