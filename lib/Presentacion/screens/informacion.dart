// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last

import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class informacion extends StatefulWidget {
  const informacion({super.key});

  @override
  State<StatefulWidget> createState()=>_informacionState();


}

class _informacionState extends State<informacion>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("INFORMACIÓN"),
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
                  image: NetworkImage('https://4.bp.blogspot.com/-fq2lTk-BksY/WOPgs2o2NZI/AAAAAAAAKmY/UO8qWWMqyIokyBNNZmjGjvY8VI7KUqOHgCLcB/s1600/La-Busqueda-de-Informacion.png')),                
              ]

		), //Text
	), //Center
  
  floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
   children:[
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/prediabetes');
        }, 
        
        child:const Text('PREDIABETES',style: TextStyle(fontSize: 25),)),
  const SizedBox(height: 10),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/tipo1');
        }, 
        
        child:const Text('DIABETES Tipo 1',style: TextStyle(fontSize: 25),)),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/tipo2');
        }, 
        
        child:const Text('DIABETES Tipo 2',style: TextStyle(fontSize: 25),)),
  
         ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/gest');
        }, 
        
        child:const Text('DIABETES GESTIONAL',style: TextStyle(fontSize: 25),)),


  ]
          )


        
  
      
   

  ),
 //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}
  }

  
 


