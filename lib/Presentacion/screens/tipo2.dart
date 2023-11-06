// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:flutter/services.dart';




class tipo2 extends StatefulWidget {
  const tipo2({super.key});

  @override
  State<StatefulWidget> createState()=>_tipo2State();


}

class _tipo2State extends State<tipo2>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("DIABETES TIPO 2"),
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
                   image: NetworkImage('https://medlineplus.gov/images/DiabetesType2.jpg')),                
               
  
             Text('DIABETES TIPO 2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
               Text('La diabetes tipo 2 es una afección que se produce por un problema en la forma en que el cuerpo regula y usa el nivel de azúcar como combustible. Ese azúcar también se conoce como glucosa. Esta afección a largo plazo aumenta la circulación de azúcar en la sangre. Eventualmente, los niveles elevados de glucosa en la sangre pueden derivar en trastornos de los sistemas circulatorio, nervioso e inmunitario.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
            Text('Sintomas', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
            Text('Los síntomas de la diabetes tipo 2 suelen desarrollarse lentamente. De hecho, puedes tener diabetes tipo 2 durante años sin saberlo. Cuando hay síntomas, estos pueden comprender los siguientes:'
  , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
           SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Aumento de la sed.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Micción frecuente.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Aumento del hambre.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pérdida de peso involuntaria.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Cansancio.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Visión borrosa.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Llagas de cicatrización lenta.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Infecciones frecuentes.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Entumecimiento u hormigueo en las manos o los pies.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Zonas de piel oscurecida, por lo general en axilas y cuello.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

  
               
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

  
 


