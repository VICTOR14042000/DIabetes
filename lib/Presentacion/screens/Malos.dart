// ignore_for_file: camel_case_types, file_names

import "package:flutter/material.dart";
import 'package:flutter/services.dart';




class malo extends StatefulWidget {
  const malo({super.key});

  @override
  State<StatefulWidget> createState()=>_maloState();


}

class _maloState extends State<malo>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("ALIMENTOS MALOS"),
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
                   image: NetworkImage('https://blog.oncosalud.pe/hubfs/Conoce%20los%20alimentos%20que%20debes%20evitar%20consumir%20en%20exceso.webp')),                
               
  
             Text('ALIMENTOS QUE NO PUEDES CONSUMIR', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
               Text('Los alimento que NO puede consumir moderadamente un diabetico con sus medidas son los siguientes: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              
Text('Lácteos', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
               Image(
                   image: NetworkImage('https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small__webp/public/articulos/productos-lacteos_jpg.webp')),                
               
  
               Text('Los lácteos nos aportan proteínas, vitaminas y minerales, entre los cuales destaca el calcio, nutriente esencial para la formación y mantención de huesos y dientes' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              Text('⚠︎ Alimentos con alto índice de glicémico, no consumir cuando la glucosa se encuentre alta, son los que se indica la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 7, 7, 7))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Incaparina  1 Cucharada en un vaos de agua', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Bienestarina  1 vaso', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
          SizedBox(height: 30, ),
   Text('X Alimentos que NO DEBE COMER: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 247, 6, 6))),
                 SizedBox(height: 30, ),

             ListTile(title:Text('➣ Atoles', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Leche Entera', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Leche chocolatada', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Yogur de Sabores', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
            SizedBox(height: 50, ),

      Text('Verduras ', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
              
              Image(
                   image: NetworkImage('https://phantom-marca.unidadeditorial.es/91bd6b11b86e69ac033cc91e649580d4/resize/720/f/webp/assets/multimedia/imagenes/2023/05/30/16854588843943.jpg')),                

                SizedBox(height: 30, ),
               Text('Las verduras son hortalizas cuyo color predominante es el verde. Sin embargo, el uso popular suele extender su significado a otras partes comestibles de las plantas, como hojas, inflorescencias y tallos.​' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
               Text('X Alimentos que NO DEBE COMER: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 247, 6, 6))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Licuados', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pure', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Envueltos de Verdura', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Chilaquilas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Fritas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Aderezos grasosos o cremosos', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

     Text('Frutas ', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
              
              Image(
                   image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Fruit_Stall_in_Barcelona_Market.jpg/1024px-Fruit_Stall_in_Barcelona_Market.jpg')),                
               

                SizedBox(height: 30, ),
               Text('Se denomina fruta a aquellos frutos comestibles obtenidos de plantas cultivadas o silvestres que, por su sabor generalmente dulce-acidulado, su aroma intenso y agradable y sus propiedades nutritivas, suelen consumirse mayormente en su estado fresco, como jugo o como postre (y en menor medida, en otras preparaciones), una vez alcanzada la madurez organoléptica, o luego de ser sometidos a cocción.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
              Text('⚠︎ Alimentos con alto índice de glicémico, no consumir cuando la glucosa se encuentre alta, son los que se indica la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 7, 7, 7))),
                 SizedBox(height: 30, ),  
           
             ListTile(title:Text('➣ Banano   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Mango Maduro   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Caimito   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Chico   1 Unidad pequeña o 1/2 grande', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Coctel de frutas   1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Zapote   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Guineo majunche   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Anona   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Mamey   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Melón   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Guanaba   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Piña   1 Rodaja', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Papaya   1 Rodaja', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Sandia   1 Rodaja', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

                             SizedBox(height: 30, ),

            Text('X Alimentos que NO DEBE COMER: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 247, 6, 6))),
                 SizedBox(height: 30, ),
            
             ListTile(title:Text('➣ Frutas Maduras', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Refrescos Instantáneos (Toki, tang, zuco, etc.)', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Jugo de frutas naturales', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Jugos enlatados o envasados', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Gatorade', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Frutas en almíbar', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Frutas en conservas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Licuados de frutas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

              Text('Cereales', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
               Image(
                   image: NetworkImage('https://cdn.nutritionstudies.org/wp-content/uploads/2014/05/whole-grains-good-or-bad.jpg')),                
               
  
               Text('Los Cereales son un conjunto de semillas que pertenecen a la familia conocida como gramíneas.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
          Text('⚠︎ Alimentos con alto índice de glicémico, no consumir cuando la glucosa se encuentre alta, son los que se indica la siguiente lista: ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 7, 7, 7))),
                 SizedBox(height: 30, ),  
           
             ListTile(title:Text('➣ Cereales de Desayuno integrales  1 paquete', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Papa  1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Arroz Blanco   1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pasta Común   1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ camote   1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Guicoy Sazón    1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Yuca 1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Ichintal      1/2 taza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Harina de Maiz            1 Cucharada', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Harina de Trigo      1 Cucharada', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Maicena      1 Cucharada', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Platano   1/4 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pan franses  1 Unidad', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
      SizedBox(height: 30, ),
       Text('X Alimentos que NO DEBE COMER: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 247, 6, 6))),
                 SizedBox(height: 30, ),
            
             ListTile(title:Text('➣ Panqueques', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pasteles', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pies', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Galletas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pan dulce / de manteca', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tamales', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Chuchitos', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Paches', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Pizza', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Preparados infantiles (nestum, cerelac, etc)', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Atoles', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

              SizedBox(height: 50, ),

             Text('Carnes ', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
              
              Image(
                   image: NetworkImage('https://i.blogs.es/a6a88d/1366_20001/1366_2000.webp')),                
               
    SizedBox(height: 30, ),
       Text('X Alimentos que NO DEBE COMER: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 247, 6, 6))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Carnes de Cerdo', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Chicharrones', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Carnes gordas de res, pellejo de pollo, hueso para caldo, carnes, enlatadas o secas.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Queso seco o duro', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Embutidos (longanizas, chorizos, chuletas, jamones)', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
                             SizedBox(height: 30, ),

    
 Text('Grasas', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
               Image(
                   image: NetworkImage('https://www.farmaceuticonline.com/wp-content/uploads/2019/05/dieta-saludable-el-greix-1170x779.jpg')),                
               
              Text('Las grasas son un tipo de nutriente que se obtiene de la alimentación. Es esencial comer algunas grasas, aunque también es dañino comer demasiado. Las grasas que usted consume le dan al cuerpo la energía que necesita para trabajar adecuadamente. ' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                   SizedBox(height: 30, ),
       Text('X Alimentos que NO DEBE COMER: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 247, 6, 6))),
                 SizedBox(height: 30, ),
           
             ListTile(title:Text('➣ Crema', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Tocino', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Margarina', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Mantequilla', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Manteca Vegetal', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Manteca de Cerdo', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             SizedBox(height: 50, ),
               
Text('Otros Alimentos', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
               Image(
                   image: NetworkImage('https://previews.123rf.com/images/dreamsvector/dreamsvector1704/dreamsvector170400146/75336232-conjunto-de-comida-de-dibujos-animados-bebidas-no-alcoh%C3%B3licas-t%C3%A9-t%C3%A9-de-hierro-chocolate-caliente.jpg')),                
           
      SizedBox(height: 30, ),
       Text('X Alimentos que NO DEBE COMER: ' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 247, 6, 6))),
                 SizedBox(height: 30, ),

             ListTile(title:Text('➣ Agua Gaseosas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Bebidas Alcohólicas', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Condimentos Artificiales', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Espesantes de harina o masa', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Azúcar, Miel y Panela. ', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
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

  
 


