// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last, prefer_interpolation_to_compose_strings, avoid_print, unused_import, non_constant_identifier_names, duplicate_import, unused_local_variable, use_function_type_syntax_for_parameters


import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'dart:convert';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<StatefulWidget> createState()=>_principalState();


}

class _principalState extends State<principal>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("APP DIABETES"),
		actions: <Widget>[
		 IconButton(
			icon: const Icon(Icons.comment),
			tooltip: 'Comment Icon',
			onPressed: (){
          Navigator.of(context).pushNamed('/chatapp');
  
      },
		),  //IconButton
		/*IconButton(
			icon: const Icon(Icons.settings),
			tooltip: 'Setting Icon',
			onPressed: () {
        
      },
		), *///IconButton
		],  //<Widget>[]
		backgroundColor: const Color.fromARGB(255, 73, 156, 204),
		//elevation: 50.0,
		leading: IconButton(
		icon: const Icon(Icons.account_circle),
		tooltip: 'perfil',
		onPressed: () {
      Navigator.of(context).pushNamed('/perfil');
    },
		),
		systemOverlayStyle: SystemUiOverlayStyle.light,
	), //AppBar
	body: const Center(
		child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('APP DIABETES', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 73, 156, 204))),

                Image(
                  image: NetworkImage('https://img.freepik.com/vector-premium/diabetes-personajes-dibujos-animados-sangre-glucometro_8071-26013.jpg?w=826')),
                
                Text('La vida no ha terminado porque tienes diabetes.Aprovecha al máximo lo que tienes, se agradecido. -Dale Evans', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 73, 156, 204))),
                
              ]

		), //Text
	), //Center
  
  floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
   children:[

        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/menu');
        }, 
        
        child:const Text('Menú',style: TextStyle(fontSize: 25),)),
  const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/inicio');
        }, 
        
        child:const Text('Cerrar Sesión',style: TextStyle(fontSize: 25),)),
  
  ]
          )
  ),
 //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}
  }



  