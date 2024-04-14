import 'package:flutter/material.dart';
import 'package:front_techno_croption/src/pages/login/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 50,
          child: _textodecuenta(),
        ),
        body: Stack(
          children: [
            _ColorApp(context),
            _FormaDeCaja(context),
            Column(
              children: [_textoDeApp()],
            ),
          ],
        ),
      ),
    );
  }

  Widget _textoDeApp() {
    return Container(
      alignment: Alignment.center,
      height: 400,
      child: const Text(
        'Ｔｅｃｈｎｏ_ＣｒｏｐＴｉｏｎ',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _ColorApp(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 6, 140, 250),
            Colors.green.shade900,
          ],
        ),
      ),
    );
  }

  Widget _textodecuenta() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '¿No tienes cuentas?',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        const SizedBox(
          width: 7,
        ),
        GestureDetector(
          onTap: () => controller.IrRegisterpage(),
          child: Text(
            'Registrate aquí',
            style: TextStyle(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
        )
      ],
    );
  }

  Widget _FormaDeCaja(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.33, left: 50, right: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textodeInformacion(),
            _textoEmail(),
            _textoPassword(),
            _BotonLogin()
          ],
        ),
      ),
    );
  }

  Widget _textodeInformacion() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
        bottom: 50,
      ),
      child: const Text(
        'Ingresa esta información',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _textoEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            hintText: 'Correo electrónico', prefixIcon: Icon(Icons.email)),
      ),
    );
  }

  Widget _textoPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: controller.passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: const InputDecoration(
            hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)),
      ),
    );
  }

  Widget _BotonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: ElevatedButton(
          onPressed: () => controller.login(),
          child: const Text(
            'Ingresar',
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}
