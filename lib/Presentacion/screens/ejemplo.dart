// ignore_for_file: camel_case_types, file_names

import "package:flutter/material.dart";
import 'package:flutter/services.dart';




class ejemplo extends StatefulWidget {
  const ejemplo({super.key});

  @override
  State<StatefulWidget> createState()=>_ejemploState();


}

class _ejemploState extends State<ejemplo>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("EJEMPLO DE MENÚ"),
		backgroundColor: const Color.fromARGB(255, 73, 156, 204),
		//elevation: 50.0,
		leading: IconButton(
		icon: const Icon(Icons.arrow_back),
		tooltip: 'retorno',
		onPressed: () {
      Navigator.of(context).pushNamed('/alimentos');
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
                   image: NetworkImage('https://lecheunicla.com/wp-content/uploads/Ideas-de-desayunos-faciles-y-saludables.png')),                
               
  
             Text('Ejemplo de Menú', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
               Text('Aqui les mostramos un menú completo de  dia que un diabetico debe de consumir, pero solo de los alimentos adecuados vistos: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              
Text('Desayuno', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
              
             ListTile(title:Text('➣ 1 Porción del Grupo Lácteos', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción del Grupo Verduras', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción del Grupo Cereales', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 1 Porción del Grupo Carnes', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 1 Porción del Grupo Aceite', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción de Agua', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
               SizedBox(height: 30, ),

Text('Refrigerio', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
              
             ListTile(title:Text('➣ 1 Porción del Grupo Frutas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 1 Porción de Semillas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 vasos de Agua', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
               SizedBox(height: 30, ),

Text('Almuerzo', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
              
             ListTile(title:Text('➣ 4 Porción del Grupo Carnes', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción del Grupo Verduras', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción del Grupo Carnes', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 1 Porción del Grupo Aceite', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción de Agua', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
               SizedBox(height: 30, ),

Text('Refrigerio', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
              
             ListTile(title:Text('➣ 1 Porción del Grupo Frutas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 vasos de Agua', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
               SizedBox(height: 30, ),

Text('Cena', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
              
             ListTile(title:Text('➣ 1 Porción del Grupo Lácteos', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción del Grupo Verduras', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción del Grupo Cereales', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 1 Porción del Grupo Carnes', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 1 Porción del Grupo Aceite', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ 2 Porción de Agua', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
               SizedBox(height: 30, ),

   Text('Ejemplo del Plato Saludable', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
 Image(
                   image: NetworkImage('https://www.cristinaplazanutricionista.com/wp-content/uploads/2019/10/alimentacion-saludable-1080x609.png')),                
               
               Text('Aqui les mostramos un ejemplo de como debe de visualizar un plato en tiempos de desayuno, almuerzo y cena. Lo importante es que el grupo de la carne (Proteina) debe ser menor que lo demas.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
               Text('Lo recomendable es que la porción del Grupo de la Carne debe ser al tamaño de la palma de la mano.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
               Text('Los demás grupo puede cosumir más alimentos pero sin exagerar' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),

                 SizedBox(height: 30, ),

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

  
 


