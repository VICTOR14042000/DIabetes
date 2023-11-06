// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last, prefer_const_literals_to_create_immutables, file_names

import "package:flutter/material.dart";
import 'package:flutter/services.dart';




class paso extends StatefulWidget {
  const paso({super.key});

  @override
  State<StatefulWidget> createState()=>_pasoState();


}

class _pasoState extends State<paso>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

	home: Scaffold(

	appBar: AppBar(
		title: const Text("EXAMEN DE GLUCOSA"),
		backgroundColor: const Color.fromARGB(255, 73, 156, 204),
		//elevation: 50.0,
		leading: IconButton(
		icon: const Icon(Icons.arrow_back),
		tooltip: 'retorno',
		onPressed: () {
      Navigator.of(context).pushNamed('/glu');
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
                   image: NetworkImage('https://medishop.gt/whozicoa/2021/12/GLUCOMETRO-ACCU-ANSWER-VISTA-4.jpg')),                
               
  
             Text('EXAMEN DE GLUCOSA', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
               SizedBox(height: 30, ),
  
               Text('Un examen de glucosa en la sangre mide la cantidad de glucosa en tu sangre. La glucosa, un tipo de azúcar simple, es la fuente principal de energía de tu cuerpo. Tu cuerpo convierte los carbohidratos que consumes en glucosa.' , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
                 SizedBox(height: 30, ),
            Text('¿Cómo prepararte para un examen de glucosa en la sangre?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
              SizedBox(height: 30, ),
            Text('Los exámenes de glucosa en la sangre son aleatorios o exámenes en ayunas.'
  , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
           SizedBox(height: 30, ),
            Text('Para una prueba de glucosa en la sangre en ayunas, no puedes ingerir ni tomar nada, solo agua durante ocho horas antes de tu examen. Es posible que desees programar un examen de glucosa en ayunas, a primera hora de la mañana, para que no tengas que ayunar durante el día. Puedes comer y beber antes de un examen de glucosa aleatorio.'
  , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
           SizedBox(height: 30, ),
           Text('Los exámenes en ayunas son más comunes debido a que proporcionan resultados más precisos y son más fáciles de interpretar.'
  , style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224))),
           SizedBox(height: 30, ),
           Text('¿Que se necesita para realizar Examen de Glucosa?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
            ListTile(title:Text('➣ El examen se puede realizar antes y después de cada tiempo de comida.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             ListTile(title:Text('➣ Un Glucómetro', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             Image(
                   image: NetworkImage('https://medishop.gt/whozicoa/2021/12/GLUCOMETRO-ACCU-ANSWER-VISTA-2.jpg')),                
               
             
             ListTile(title:Text('➣ Tiras reactivas. (Deben ser la medida adaptable al Glucómetro)', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
            Image(
                   image: NetworkImage('https://delhersgt.com/wp-content/uploads/2022/03/Tiras-Reactivas-Prodigy-Guatemala.jpg')),                
               
             ListTile(title:Text('➣ Lancetas.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             Image(
                   image: NetworkImage('https://kabla.mx/labsupply/wp-content/uploads/2017/05/G124-10A-2-510x510.png')),                
               
              ListTile(title:Text('➣ Lápiz de Lanceta ', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             Image(
                   image: NetworkImage('https://www.accu-chek.com.mx/sites/g/files/iut326/f/styles/image_300x400/public/media_root/product_media_files/product_images/accu-chek_softclix_y_25_lancetas.png?itok=-yoWP2s_')),                
               ListTile(title:Text('➣ Algodón', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             Image(
                   image: NetworkImage('https://farmaciaslider.pe/my-assets/image/product/894b9f4ebb6b3cf9c84301740d143050.jpg')),  

              ListTile(title:Text('➣ Bote de Alcohol', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             Image(
                   image: NetworkImage('https://diquiva.com/cdn/shop/products/ALCOHOL-MEDICINAL-DIQUIVA-16oz_1024x1024@2x.png?v=1609986420')),  
              SizedBox(height: 30, ),

            Text('Pasos para realizar Examen de Glucosa:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 11, 78, 224))),
              SizedBox(height: 30, ),
             ListTile(title:Text('1. Tener las manos limpias y prepara el Lápiz con la Lanceta: Debe de seguir la instrucciones del lápiz para poder utilizarlo.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
             Image(
                   image: NetworkImage('https://www.accu-chek.com.ar/sites/g/files/iut496/f/microsites/guide/images/img1.png')),  
              SizedBox(height: 30, ),
             ListTile(title:Text('2. Prepara el Glucómetro con una tira reactiva.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
              Image(
                   image: NetworkImage('https://i5.walmartimages.com.mx/mg/gm/3pp/asr/a2e62e2c-36dc-4b95-a6d8-c54619ffe267.86d3932491399cf61f4f57b1b6bc2d7d.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF')),  
              SizedBox(height: 30, ),
             ListTile(title:Text('3. Toma un poco de algodón y mojalo con un poco de alcohol, y pasalo en el dedo indice de cualquier mano.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
                Image(
                   image: NetworkImage('https://media.istockphoto.com/id/1372141408/es/foto/el-hombre-desinfecta-su-dedo-con-un-hisopo-de-algod%C3%B3n-empapado-en-alcohol-antes-de-pincharse.jpg?s=612x612&w=0&k=20&c=rfKCwuvLWy1SduFZIP1QM-qGp1UTDLlLjZiosof9wlA=')),  
              SizedBox(height: 30, ),
             ListTile(title:Text('4. Luego realiza un pinchon en el dedo índice con la lapíz con la Lanceta.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
                  Image(
                   image: NetworkImage('https://previews.123rf.com/images/zaretskaya/zaretskaya1408/zaretskaya140800052/30730079-mujer-haciendo-una-prueba-de-az%C3%BAcar-en-la-sangre-el-nivel-de-determinaci%C3%B3n-gluc%C3%B3metro-se-encuentran.jpg')),  
              SizedBox(height: 30, ),
               ListTile(title:Text('5. Presionando desde la base del dedo, ponga suavemente una pequeña cantidad de sangre sobre la tira reactiva.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
                  Image(
                   image: NetworkImage('https://www.bupasalud.com/sites/default/files/styles/640_x_400/public/articulos/2018-01/fotos/prediabetes-glucosa-alterada-ayunas.jpg?itok=aUP773pc')),  
              SizedBox(height: 30, ),
              ListTile(title:Text('6. Después de unos segundos aparecerá el valor. Anote y haga seguimiento a sus resultados. Agregue notas sobre cualquier cosa que pueda haber hecho que los números no estén dentro de su rango objetivo, como alimentos, actividad, etc.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
                  Image(
                   image: NetworkImage('https://portal.andina.pe/EDPfotografia3/Thumbnail/2020/11/09/000725259W.jpg')),  
              SizedBox(height: 30, ),
              ListTile(title:Text('NOTA: ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 11, 78, 224)))),
              ListTile(title:Text('En la siguiente tabla se visualiza el nivel de azucar que tiene en este momento, si tiene la glucosa baja, normal o alta.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
                  Image(
                   image: NetworkImage('https://farmacblog.files.wordpress.com/2013/07/tabla-glucemia.jpg')),  
              SizedBox(height: 30, ),
              ListTile(title:Text('7. Deseche la lanceta y la tira adecuadamente en un recipiente de basura.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
                  Image(
                   image: NetworkImage('https://s28461.pcdn.co/wp-content/uploads/iStock_000004140804XSmall_Kary-Nieuwenhuis2.jpg')),  
              SizedBox(height: 30, ),
                     SizedBox(height: 30, ),
              ListTile(title:Text('OBSERVACIÓN: ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 11, 78, 224)))),
              ListTile(title:Text('➣ No comparta con nadie, incluso familiares, el equipo de monitoreo del azúcar en la sangre, como las lancetas.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),
              ListTile(title:Text('➣ Guarde las tiras de prueba en el recipiente suministrado. No las exponga a humedad, calor extremo ni temperaturas frías.', style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 11, 78, 224)))),

                  Image(
                   image: NetworkImage('https://media.istockphoto.com/id/1029801390/es/vector/doctor-pulgar-arriba-signo-de-personaje-de-dibujos-animados.jpg?s=1024x1024&w=is&k=20&c=P_cR0J01pEzm7WxtlLJBeHjQXLY92YZBb25uS2TDSVA=')),  
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

  
 


