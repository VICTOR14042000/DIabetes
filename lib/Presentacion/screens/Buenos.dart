// ignore_for_file: camel_case_types, file_names

import "package:flutter/material.dart";
import 'package:flutter/services.dart';




class bueno extends StatefulWidget {
  const bueno({super.key});

  @override
  State<StatefulWidget> createState()=>_buenoState();


}

class _buenoState extends State<bueno>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("ALIMENTOS ADECUADOS"),
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
                   image: NetworkImage('https://www.gaceta.unam.mx/wp-content/uploads/2021/11/211104-aca9-des-f1-obesidad.jpg')),                
               
  
             Text('ALIMENTOS QUE PUEDES CONSUMIR', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
               Text('Los alimento que puede adquirir un diabetico con sus medidas son los siguientes: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              
Text('Lácteos', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
               Image(
                   image: NetworkImage('https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small__webp/public/articulos/productos-lacteos_jpg.webp')),                
               
  
               Text('Los lácteos nos aportan proteínas, vitaminas y minerales, entre los cuales destaca el calcio, nutriente esencial para la formación y mantención de huesos y dientes' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              Text('Un diabetico debe cosumir 2 porciones al dia de alimentos lacteos pero solo los que indica la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Leche descremada  1 vaso', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Bebida de almendra sin azúcar  1 vaso', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Bebida de soya sin azúcar   1 vaso', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Queso Panela  1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Queso Fresco  1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Requesón  3 Cucharadas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Queso cottage o ricota 1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Yogurt natural Sin Azúcar  1 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             SizedBox(height: 50, ),

      Text('Verduras ', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
              
              Image(
                   image: NetworkImage('https://phantom-marca.unidadeditorial.es/91bd6b11b86e69ac033cc91e649580d4/resize/720/f/webp/assets/multimedia/imagenes/2023/05/30/16854588843943.jpg')),                

                SizedBox(height: 30, ),
               Text('Las verduras son hortalizas cuyo color predominante es el verde. Sin embargo, el uso popular suele extender su significado a otras partes comestibles de las plantas, como hojas, inflorescencias y tallos.​' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              Text('Un diabetico debe cosumir 6 porciones al dia de Verduras pero solo los que indica la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Guisquil   1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Ejote 1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Coliflor   1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Flor de Izote   1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Güicoyitos   1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Bledo   1/2 taza cocida o 1 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pacaya  1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Garbanzos      1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Palmito              1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Lechuga      1 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pepino      1 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Puerro   1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Cebolla   1/2 taza cocida o cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Chipilin  1/2 taza cocida 1 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Arveja   1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Arveja China   1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Repollo   1/2 taza cocida o cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tomate   1/2 taza cocida o cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Perulero  1/2 taza o 1 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Zanahoria Cruda      1/2 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Chile Pimiento   1/2 taza cocida o cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Esparagos     1/2 taza cocida o cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Berenjena      1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),            
              SizedBox(height: 50, ),

            Text('⚠︎ Alimentos altos de Sodio, no consumir cuando la Presión Arterial se encuentre alta. los alimentos son los siguiente lista: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 0, 0, 0))),
                 SizedBox(height: 30, ),
            
             ListTile(title:Text('➣ Acelga      1/2 taza cocida o 1 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Apio      1/2 taza cocida o  cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Berro     1/2 taza cocida o 1 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Brócoli     1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Espinaca      1/2 taza cocida o  cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Nabo     1/2 taza cocida', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Rábano      1/2 taza cruda', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

     Text('Frutas ', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
              
              Image(
                   image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Fruit_Stall_in_Barcelona_Market.jpg/1024px-Fruit_Stall_in_Barcelona_Market.jpg')),                
               

                SizedBox(height: 30, ),
               Text('Se denomina fruta a aquellos frutos comestibles obtenidos de plantas cultivadas o silvestres que, por su sabor generalmente dulce-acidulado, su aroma intenso y agradable y sus propiedades nutritivas, suelen consumirse mayormente en su estado fresco, como jugo o como postre (y en menor medida, en otras preparaciones), una vez alcanzada la madurez organoléptica, o luego de ser sometidos a cocción.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              Text('Un diabetico debe cosumir 2 porciones al dia de frutas pero solo los que indica la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Fresa  1 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Toronja   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Membrillo   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Mora  1 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pitaya   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Granadilla  1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Kiwi   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

                             SizedBox(height: 30, ),

            Text('ツ Alimentos que puede comer cruda con cáscara o bagazo, los alimentos son los siguiente lista: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 45, 218, 10))),
                 SizedBox(height: 30, ),
            
             ListTile(title:Text('➣ Naranja   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Mandarina   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Lima   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Manzana   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pera   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Durazno   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Melocotón   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Arandanos   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Guayaba   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Jocote Marañon   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Nectarina   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Ciruela   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Uvas   1 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Manzanilla   1 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),



              Text('Cereales', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
               Image(
                   image: NetworkImage('https://cdn.nutritionstudies.org/wp-content/uploads/2014/05/whole-grains-good-or-bad.jpg')),                
               
  
               Text('Los Cereales son un conjunto de semillas que pertenecen a la familia conocida como gramíneas.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              Text('Un diabetico debe cosumir 6 porciones al dia de alimentos cereales pero solo los que indica la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Frijol   1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Arroz Integal  1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pastas integrales   1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Quinoa   1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Avena Cruda o Mosh    1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Habas    2 cucharadas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Lentejas 1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Garbanzos      1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Elote Mediano             1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tortilla      1/2 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pan integrales      1 unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Galleta integrale sin Azucar   1 rodaja', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
              SizedBox(height: 50, ),

             Text('Carnes ', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
              
              Image(
                   image: NetworkImage('https://i.blogs.es/a6a88d/1366_20001/1366_2000.webp')),                
               

                SizedBox(height: 30, ),
               Text('Las carnes Es una fuente de vitamina B12; esta vitamina nos ayuda a metabolizar proteínas, a formar glóbulos rojos y a darle mantenimiento al sistema nervioso central.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              Text('Un diabetico debe cosumir 6 porciones al dia de Carne pero solo los que indica la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Pollo sin Piel  1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Carne de Res   1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pescado   1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Mariscos Camarón, Conchas 1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Huevo entero o 2 Claras de Huevo 1 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
                             SizedBox(height: 30, ),

            Text('⚠︎ Alimentos altos de Sodio, no consumir cuando la Presión Arterial se encuentre alta. los alimentos son los siguiente lista: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 0, 0, 0))),
                 SizedBox(height: 30, ),
            
             ListTile(title:Text('➣ Jamón de Pechuga de Pavo o Pollo  1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Sanchicha de Pechuga de Pavo o Pollo  1 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Atún en agua  1 Onza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             

 Text('Grasas', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
               Image(
                   image: NetworkImage('https://www.farmaceuticonline.com/wp-content/uploads/2019/05/dieta-saludable-el-greix-1170x779.jpg')),                
               
              Text('Las grasas son un tipo de nutriente que se obtiene de la alimentación. Es esencial comer algunas grasas, aunque también es dañino comer demasiado. Las grasas que usted consume le dan al cuerpo la energía que necesita para trabajar adecuadamente. ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              Text('Un diabetico debe cosumir 4 porciones al dia de Grasas pero solo los que indica en la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Aceite de maíz  1 cucharadita', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Aceite de oliva  1 cucharadita', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Aceite de canola  1 cucharadita', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Aceite de algodón  1 cucharadita', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Aceite de soya  1 cucharadita', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Aguacate  1/4 de la Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Mayonesa Light  1 cucharadita', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Semillas secas sin sal      10 unidades', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
              SizedBox(height: 50, ),
               

            Text('⚠︎ Alimentos altos de Sodio, no consumir cuando la Presión Arterial se encuentre alta. los alimentos son los siguiente lista: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 2, 2, 2))),
                 SizedBox(height: 30, ),
            
             ListTile(title:Text('➣ Aceitunas  5 Unidades', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
              
Text('Otros Alimentos', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
               Image(
                   image: NetworkImage('https://previews.123rf.com/images/dreamsvector/dreamsvector1704/dreamsvector170400146/75336232-conjunto-de-comida-de-dibujos-animados-bebidas-no-alcoh%C3%B3licas-t%C3%A9-t%C3%A9-de-hierro-chocolate-caliente.jpg')),                
           
             ListTile(title:Text('➣ Agua Pura  6 o 8 Vasos', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Limón, Vinagre, caldo desgrasado, especies naturales.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Sustitutos del Azúcar: Splenda o Stevia.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Refrescos: Limonada, Rosa de Jamaica y Tamarindo', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Café 1 o 2 tazas (El Café solo debe de ir con algún sustituto del Azúcar mencionado y con Leches descremada; nada de Azúcar solo sustitutos.)', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
               SizedBox(height: 50, ),
        
               Text('Si algún alimento no se mencionó porfavor pregunte a su Nutricionista antes de consumir. ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Color.fromARGB(255, 224, 210, 7))),
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

  
 


