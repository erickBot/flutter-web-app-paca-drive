import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/src/utils/colors.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SimpleDialog(
      title: Text('LOGIN'),
      children: <Widget>[
        SizedBox(height: size.height * 0.2),
        Text(
          'INICIAR SESION',
          style: TextStyle(fontSize: 24),
        ),
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

  Widget _inputEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: 400,
      child: TextField(
        //controller: _controller.emailController,
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
        //controller: _controller.passwordController,
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
      onPressed: () {},
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
      onTap: () {},
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
