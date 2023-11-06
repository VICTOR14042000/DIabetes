// ignore_for_file: camel_case_types, file_names, unnecessary_const

import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class alimentos extends StatefulWidget {
  const alimentos({super.key});

  @override
  State<StatefulWidget> createState()=>_alimentosState();


}

class _alimentosState extends State<alimentos>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("ALIMENTOS "),
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
      Navigator.of(context).pushNamed('/menu');
    },
		),
		systemOverlayStyle: SystemUiOverlayStyle.light,
	), //AppBar
	body: const Center(
		child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Image(
                  image: NetworkImage('https://imagenes.elpais.com/resizer/DEHH-M6JIbZL8qyGG1DPUbL3uIo=/1200x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/G6EPN3I7CZD6TE66P4J6OE4N6Q.jpg')),                
            
            
Text('La información de la Alimentación para los usuarios Diabetico ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
  const SizedBox(height: 10),
Text('Fue aportado por: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
  const SizedBox(height: 10),
Text('Licda. Carla Rodas' , style: TextStyle(fontSize: 30,color:Color.fromARGB(255, 11, 78, 224))),
  const SizedBox(height: 10),
Text('Nutricionista con especialidad en' , style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 11, 78, 224))),
Text('diabetes y control del Peso.' , style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 11, 78, 224))),


                 SizedBox(height: 30, ),
              ]

		), //Text
	), //Center
  
  floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
   children:[
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/bueno');
        }, 
        
        child:const Text('ALIMENTOS ADECUADOS',style: TextStyle(fontSize: 25),)),
  const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/malo');
        }, 
        
        child:const Text('ALIMENTOS INADECUADOS',style: TextStyle(fontSize: 25),)),

const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/ejemplo');
        }, 
        
        child:const Text('EJEMPLO DE MENÚ',style: TextStyle(fontSize: 25),)),
       
      


  ]
          )


        
  
      
   

  ),
 //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}
  }

  
 


