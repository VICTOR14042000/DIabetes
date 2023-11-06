// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:flutter/services.dart';




class gestional extends StatefulWidget {
  const gestional({super.key});

  @override
  State<StatefulWidget> createState()=>_gestionalState();


}

class _gestionalState extends State<gestional>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("DIABETES GESTIONAL"),
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
                   image: NetworkImage('https://cdn-cinfasalud.cinfa.com/wp-content/uploads/2019/07/CinfaSalud-imagen-diabetes-gestacional-600.jpg?x14225')),                
               
  
             Text('DIABETES GESTIONAL', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
               Text('La diabetes gestacional es un tipo de diabetes que aparece por primera vez durante el embarazo en mujeres embarazadas que nunca antes padecieron esta enfermedad. En algunas mujeres, la diabetes gestacional puede afectarles en más de un embarazo. La diabetes gestacional por lo general aparece a la mitad del embarazo. Los médicos suelen realizar estudios entre las 24 y 28 semanas del embarazo. La diabetes gestacional se puede controlar a menudo con una alimentación saludable y ejercicio regular, pero algunas veces la madre también necesitará insulina.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
            Text('Problemas de la diabetes gestacional en el embarazo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
            Text('El azúcar de la sangre que no está bien controlado en la diabetes gestacional puede llevar a problemas en la madre y su bebé:'
  , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
           SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Un bebé demasiado grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Parto por Cesárea.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Presión arterial alta (preeclampsia)', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Bajo nivel de azúcar en la sangre (hipoglucemia)', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             
               
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

  
 


