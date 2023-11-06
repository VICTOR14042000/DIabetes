// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:flutter/services.dart';




class tipo1 extends StatefulWidget {
  const tipo1({super.key});

  @override
  State<StatefulWidget> createState()=>_tipo1State();


}

class _tipo1State extends State<tipo1>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("DIABETES TIPO 1"),
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
                   image: NetworkImage('https://www.clinicalascondes.cl/Dev_CLC/media/Imagenes/diabetes-infantil/img-banner-ppal.jpg')),                
               
  
             Text('DIABETES TIPO 1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
               Text('Si tienes diabetes tipo 1, tu páncreas no produce insulina o produce muy poca. La insulina es una hormona que ayuda a que el azúcar en la sangre entre a las células del cuerpo, donde se puede usar como fuente de energía. Sin insulina, el azúcar en la sangre no puede entrar a las células y se acumula en el torrente sanguíneo. Tener niveles altos de azúcar en la sangre es dañino para el cuerpo y causa muchos de los síntomas y las complicaciones de la diabetes.'
'La diabetes tipo 1 (que antes se llamaba diabetes insulinodependiente o diabetes juvenil) generalmente se diagnostica en los niños, los adolescentes y los adultos jóvenes, pero puede presentarse en personas de cualquier edad.'
               , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
            Text('Sintomas', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
            Text('Los síntomas de la diabetes tipo 1 pueden aparecer de forma repentina, e incluyen los siguientes:'
  , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
           SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Tener más sed de lo habitual.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Orinar demasiado.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ En el caso de los niños, mojar la cama de noche cuando nunca les sucedió antes.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tener mucha hambre.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Bajar de peso sin intención.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Sentirse irritable o tener cambios en el estado de ánimo.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Sentirse cansado y débil', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tener visión borrosa', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

  
               
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

  
 


