

// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/Alimentos.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/Buenos.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/Malos.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/Pasos.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/QR.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/chatapp.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/ejemplo.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/gestional.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/glucosa.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/informacion.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/medidor.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/menu.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/ver.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/perfil.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/prediabetes.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/tipo1.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/tipo2.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/Seccion.dart';

import 'package:flutter_diabetes_1/Presentacion/screens/contrase%C3%B1a.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/counter_functions_screen.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/counter_screen.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/principal.dart';
//import 'package:flutter_diabetes_1/Presentacion/screens/counter_screen.dart';
//import 'package:flutter_diabetes_1/Presentacion/screens/counter_screen.dart';
//import 'package:flutter_diabetes_1/Presentacion/screens/counter_functions_screen.dart';
//import 'package:flutter_diabetes_1/Presentacion/screens/counter_screen.dart';

Future<void> main() async {
  runApp(const MyApp());

await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Color.fromARGB(255, 11, 78, 224)
        ),
      //  home: const CounterScreen(),
    routes: {
      '/inicio': (context) => CounterScreen(),
      '/registrar':(context) => CounterFunctionsScreen(),
      '/sesion':(context) => Sesion(),
      '/contrasena':(context) => Contrasena(),
      '/principal':(context) => principal(),
      '/menu':(context) => menu(),
      '/perfil':(context) => perfil(),
      '/info':(context) => informacion(),
      '/prediabetes':(context) => prediabetes(),
      '/tipo1':(context) => tipo1(),
      '/tipo2':(context) => tipo2(),
      '/gest':(context) => gestional(),
      '/glu':(context)=> glucosa(),
      '/paso':(context) => paso(),
      '/medir':(context) => medidor(),
      '/qr':(context)=> QR(),
      '/bueno':(context)=>bueno(),
      '/alimentos':(context) => alimentos(),
      '/malo':(context) => malo(),
      '/ejemplo':(context) => ejemplo(),
      '/ver':(context) => ver(),
      '/chatapp':(context) => ChatApp(),
      
    },

    initialRoute: '/inicio',
    
    home: const CounterScreen(),

       
  );
    
  }


}
