// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last

import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<StatefulWidget> createState()=>_menuState();


}

class _menuState extends State<menu>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("APP DIABETES"),
		/* actions: <Widget>[
		IconButton(
			icon: const Icon(Icons.comment),
			tooltip: 'Comment Icon',
			onPressed: () {},
		), //IconButton
		IconButton(
			icon: const Icon(Icons.settings),
			tooltip: 'Setting Icon',
			onPressed: () {},
		), //IconButton
		], */ //<Widget>[]
		backgroundColor: const Color.fromARGB(255, 73, 156, 204),
		//elevation: 50.0,
		leading: IconButton(
		icon: const Icon(Icons.arrow_back),
		tooltip: 'retorno',
		onPressed: () {
      Navigator.of(context).pushNamed('/principal');
    },
		),
		systemOverlayStyle: SystemUiOverlayStyle.light,
	), //AppBar
	body: const Center(
		child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('MENU', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 73, 156, 204))),

                Image(
                  image: NetworkImage('https://media.istockphoto.com/id/1275829214/es/vector/los-m%C3%A9dicos-est%C3%A1n-probando-az%C3%BAcar-y-glucosa-en-sangre.jpg?s=612x612&w=0&k=20&c=2_gaJ0ACA93SFFWGjZZL-7GfWH9cBAOifX1RYabQbvc=')),                
              ]

		), //Text
	), //Center
  
  floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
   children:[
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/info');
        }, 
        
        child:const Text('INFORMACIÓN',style: TextStyle(fontSize: 25),)),
  const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/glu');
        }, 
        
        child:const Text('Prueba de Glucosa',style: TextStyle(fontSize: 25),)),
  
ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/alimentos');
        }, 
        
        child:const Text('ALIMENTACIÓN',style: TextStyle(fontSize: 25),)),


  ]
          )


        
  
      
   

  ),
 //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}
  }






