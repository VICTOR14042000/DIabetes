// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
 
  @override
  Widget build(BuildContext context) {
     final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20, fontFamily: 'Raleway'));
    return Scaffold(
        body: Center(
            child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: NetworkImage('https://www.semana.com/resizer/6XNAtbmyKFrHAl3_i657M-nYwrc=/1280x720/smart/filters:format(jpg):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/semana/TGSRFRDSGFHNNHSIORXUALONLQ.jpg')),
                
                Text('APP DIABETES', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
                Text('La App que te va ayudar', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))
              ]
            ),   
        ),
  
   floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
   children:[
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/registrar');
        }, 
        
        child:const Text('Crear Cuenta',style: TextStyle(fontSize: 25),)),
  const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/sesion');
        }, 
        
        child:const Text('Iniciar Sesión',style: TextStyle(fontSize: 25),)),
  
  ]
          )
    );
    
  }
}