// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:flutter/services.dart';




class prediabetes extends StatefulWidget {
  const prediabetes({super.key});

  @override
  State<StatefulWidget> createState()=>_prediabetesState();


}

class _prediabetesState extends State<prediabetes>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("PREDIABETES"),
		backgroundColor: const Color.fromARGB(255, 73, 156, 204),
		//elevation: 50.0,
		leading: IconButton(
		icon: const Icon(Icons.arrow_back),
		tooltip: 'retorno',
		onPressed: () {
      Navigator.of(context).pushNamed('/info');
    },
		),
		systemOverlayStyle: SystemUiOverlayStyle.light,
	), //AppBar



  
	body:  const SingleChildScrollView(
      child: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
               children: [
            Image(
                   image: NetworkImage('https://canalsalud.imq.es/hubfs/evitar-prediabetes-se-cura-tratamientos.jpg')),                
               
  
             Text('PREDIABETES', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
               Text('La prediabetes es una afección grave en la que los niveles de'
               'azúcar en la sangre son más altos que lo normal, pero todavía '
               'no han llegado a niveles lo suficientemente altos para que se diagnostique diabetes tipo 2. '
               , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
            Text('Sintomas', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100, color: Color.fromARGB(255, 11, 78, 224))),
            Text('Se puede tener prediabetes durante años sin ningún síntoma claro, por lo que frecuentemente no se detecta hasta que aparecen problemas de salud graves, como diabetes tipo 2. Es importante que hable con su médico para que le revise los niveles de azúcar en la sangre si tiene alguno de los factores de riesgo de prediabetes, que incluyen:'
  , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
           SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Tener sobrepeso.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tener 45 años o más.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tener uno de los padres o uno de los hermanos o hermanas con diabetes tipo 2', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Hacer actividad física menos de tres veces a la semana', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Haber tenido alguna vez diabetes gestacional.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tener síndrome del ovario poliquístico', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
              
  
               
               ] 

              
  
        ), //Text
      ),
    ), //Center
  




  

        
  
      
   

  ),
 //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}
  }

  
 


