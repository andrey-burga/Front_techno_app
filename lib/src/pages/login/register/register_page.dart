import 'package:flutter/material.dart';
import 'package:front_techno_croption/src/pages/login/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _ColorApp(context),
          _FormaDeCaja(context),
          _Botonregresar(),
        ],
      ),
    );
  }

  Widget _FormaDeCaja(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.15, left: 50, right: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textodeInformacion(),
            _textoNombre(),
            _textoApellido(),
            _textoEmail(),
            _textoTelefono(),
            _textoNombrevereda(),
            _textopassword(),
            _textopasswordconfirmacion(),
            _Botonregistro(),
          ],
        ),
      ),
    );
  }

  Widget _textodeInformacion() {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 30),
      child: const Text(
        'Ingresa esta información',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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

  Widget _textoNombre() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller.nombreController,
        keyboardType: TextInputType.text,
        
        decoration: const InputDecoration(
          hintText: 'Nombre',
          prefixIcon: Icon(Icons.person),
          
        ),
  
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
          hintText: 'Correo electrónico',
          prefixIcon: Icon(Icons.email),
        ),
        
      ),
    );
  }

  Widget _textoApellido() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller.apellidoController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Apellido',
          prefixIcon: Icon(Icons.person_2_outlined),
        ),
      ),
    );
  }

  Widget _textoTelefono() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller.telefonoController,
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          hintText: 'Teléfono',
          prefixIcon: Icon(Icons.phone),
        ),
        
      ),
    );
  }

  Widget _textopassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: controller.passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Contraseña',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }

  Widget _textopasswordconfirmacion() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: controller.passwordconfirmadoController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Confirmar Contraseña',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }

  Widget _textoNombrevereda() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller.nombreveredaController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Nombre de vereda',
          prefixIcon: Icon(Icons.home),
        ),
      ),
    );
  }

  Widget _Botonregistro() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: ElevatedButton(
        onPressed: controller.register,
        child: const Text(
          'Registrarse',
          style: TextStyle(color: Colors.black),
          
        ),
      ),
    );
  }

  Widget _Botonregresar() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        child: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
