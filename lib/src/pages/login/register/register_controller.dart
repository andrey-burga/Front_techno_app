import 'package:flutter/material.dart';
import 'package:front_techno_croption/src/pages/login/models/user.dart';
import 'package:front_techno_croption/src/pages/providers/user_provider.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController nombreveredaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordconfirmadoController = TextEditingController();

  UsersProvider usersProvider = UsersProvider();


  void register() async {
    String nombre = nombreController.text;
    String apellido = apellidoController.text;
    String email = emailController.text.trim();
    String telefono = telefonoController.text.trim();
    String nombrevereda = nombreveredaController.text;
    String password = passwordController.text.trim();
    String passwordconfirmado = passwordconfirmadoController.text.trim();


    print('Nombre ${nombre}');
    print('Email ${email}');
    print('Password ${password}');

    if (validadorformu(nombre,apellido, email, telefono, nombrevereda, password, passwordconfirmado)) {
      User user = User( 
      id: '',
      nombre: nombre, 
      apellido: apellido,
      correo: email, 
      telefono: telefono, 
      nombrevereda: nombrevereda,
      password: password, 
      );

      Response response = await usersProvider.create(user);
      print('response: ${response.body}');

      Get.snackbar('Formulario  valido', 'Nuevo usuario');
    }
  }

  bool validadorformu(
    String nombre, 
    String apellido ,
    String email,
    String telefono,
    String nombrevereda,
    String password,
    String passwordconfirmado,) {


    if (nombre.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el nombre');
      return false;
    }
    if (apellido.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar apellido');
      return false;
    }


    if (email.isEmpty ) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el email');
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el email');
      return false;
    }
    if (telefono.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el numero télefono');
      return false;
    }
    if (nombrevereda.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el nombre de la vereda');
      return false;
    }
    if (password.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar la contraseña');
      return false;
    }
    if (passwordconfirmado.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar la confirmacion de tú contraseña');
      return false;
    }
    if (password.length < 5 || password.length > 20) {
    Get.snackbar('Formulario no válido', 'La contraseña debe tener entre 5 y 20 caracteres');
    return false;
   }


    if (password != passwordconfirmado) {
      Get.snackbar('Formulario no valido', 'las contraseñas no coinciden');
      return false;


      
    }


    return true;
  }
  
}