import 'package:flutter/material.dart';
import 'package:front_techno_croption/src/pages/login/menu/menu.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void IrRegisterpage() {
    Get.toNamed('/register');
  }

  

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email ${email}');
    print('Password ${password}');

    if (validadorformu(email, password)) {
      Get.snackbar('Formulario  valido', 'estas listo http');
      Get.offAll(() => const MenuScreen());// getoff es para darle direccion a las rutas ojo pues con el nombre de la clase que cree
    }
  }

  bool validadorformu(String email, String password) {
    if (email.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el email');
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el email');

      return false;
    }
  
    if (password.isEmpty  ) {
      Get.snackbar('Formulario no valido', 'Debes ingresar la contraseña');
      return false;
    } 
    

    return true;
  }
}
