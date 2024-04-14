import 'package:flutter/material.dart';
import 'package:front_techno_croption/src/pages/login/login_pages.dart';
import 'package:front_techno_croption/src/pages/login/menu/menu.dart';
import 'package:front_techno_croption/src/pages/login/register/register_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Techno_CropTion',
      initialRoute: '/',
      getPages: [GetPage(name: '/', page: () => LoginPage()),
      GetPage(name: '/register', page: () => RegisterPage()),
      GetPage(name: '/Login', page: () => const MenuScreen()),
     
     
      
      ],
      theme: ThemeData(
        primaryColor:   const Color.fromARGB(255, 6, 140, 250),
        secondaryHeaderColor:     Colors.green.shade900,
        

      ),
      navigatorKey: Get.key,
    );
  }
}