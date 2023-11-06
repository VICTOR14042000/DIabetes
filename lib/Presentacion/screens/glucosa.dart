// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last

import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class glucosa extends StatefulWidget {
  const glucosa({super.key});

  @override
  State<StatefulWidget> createState()=>_glucosaState();


}

class _glucosaState extends State<glucosa>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("PRUEBA DE GLUCOSA"),
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
        mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Image(
                  image: NetworkImage('https://www.bupasalud.com/sites/default/files/styles/640_x_400/public/articulos/2018-01/fotos/prediabetes-glucosa-alterada-ayunas.jpg?itok=aUP773pc')),                
              ]

		), //Text
	), //Center
  
  floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
   children:[
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/paso');
        }, 
        
        child:const Text('PASO PARA REALIZAR EXAMEN',style: TextStyle(fontSize: 25),)),
  const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/medir');
        }, 
        
        child:const Text('REGISTRO DE GLUCOSA',style: TextStyle(fontSize: 25),)),

const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/qr');
        }, 
        
        child:const Text('REGISTRAR CÓDIGO QR',style: TextStyle(fontSize: 25),)),
       
      const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/ver');
        }, 
        
        child:const Text('REGISTRO DE GLUCOSA',style: TextStyle(fontSize: 25),)),
       


  ]
          )


        
  
      
   

  ),
 //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}
  }

  
 


