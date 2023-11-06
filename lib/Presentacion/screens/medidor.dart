// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print, prefer_is_empty, unused_local_variable, file_names, camel_case_types, prefer_interpolation_to_compose_strings

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class medidor extends StatefulWidget {
  const medidor({super.key});

  @override
  State<medidor> createState() => _medidorState();
}

class _medidorState extends State<medidor> {
//  GlobalKey<FormState> Codigo = GlobalKey();
TextEditingController  fecha = TextEditingController();
 TextEditingController  nivel = TextEditingController();
 //TextEditingController  Telefono = TextEditingController();
 TextEditingController  observacion = TextEditingController();
 //TextEditingController  repeatPassCtrl = TextEditingController();
 
  get keyForm => null;

final Firebase=FirebaseFirestore.instance;

registroglucosa() async{
    try{
      await Firebase.collection('Medir').doc().set(
        {
          'Fecha':fecha.text,
          'Nivel':nivel.text,
          'Observación':observacion.text,
                 }
      );
    }catch(e){
        print('ERROR...'+e.toString());
    }
}

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: const Text('Registro del Glucosa'),
         	leading: IconButton(
		icon: const Icon(Icons.arrow_back),
		tooltip: 'retorno',
		onPressed: () {
      Navigator.of(context).pushNamed('/glu');
    },
		),
       ),
       body: SingleChildScrollView(
         child: Container(
           margin: const EdgeInsets.all(10.0),
           child: Form(
             key: keyForm,
             child: formUI(),
           ),
         ),
       ),
     ),
   );
 }

 formItemsDesign(icon, item) {
   return Padding(
     padding: const EdgeInsets.symmetric(vertical: 7),
     child: Card(child: ListTile(leading: Icon(icon), title: item)),
   );
 }

 String gender = 'hombre';

 Widget formUI() {
/*    var validatetelefono;*/
   var validatefecha; 
   var validatenivel;
   var validateobservacion;
   return  Column(
     children: <Widget>[
       formItemsDesign(
           Icons.calendar_month,
           TextFormField(
             controller: fecha,
             decoration: const InputDecoration(
               labelText: 'Fecha:',
             ),
             validator: validatefecha,
           )), 
  /*      formItemsDesign(
           Icons.phone,
           TextFormField(
             controller: Telefono,
               decoration: const InputDecoration(
                 labelText: 'Numero de telefono',
               ),
               keyboardType: TextInputType.phone,
               maxLength: 10,
               validator: validatetelefono,)), */
    /*    formItemsDesign(
           null,
           Column(children: <Widget>[
             const Text("Genero"),
             RadioListTile<String>(
               title: const Text('Hombre'),
               value: 'hombre',
               groupValue: gender,
               onChanged: (value) {
                 setState(() {
                   gender = value!;
                 });
               },
             ),
             RadioListTile<String>(
               title: const Text('Mujer'),
               value: 'mujer',
               groupValue: gender,
               onChanged: (value) {
                 setState(() {
                   gender = value!;
                 });
               },
             )
           ])), */
       formItemsDesign(
           Icons.egg,
           TextFormField(
             controller: nivel,
               decoration: const InputDecoration(
                 labelText: 'Ingrese el Nivel de Azucar',
               ),
       )),
       formItemsDesign(
           Icons.edit_square,
           TextFormField(
             controller: observacion,
             decoration: const InputDecoration(
               labelText: 'Observación: ',
             ),
           )),
    /*    formItemsDesign(
           Icons.remove_red_eye,
           TextFormField(
             controller: repeatPassCtrl,
             obscureText: true,
             decoration: const InputDecoration(
               labelText: 'Repetir la Contraseña',
             ),
             validator: validateobservacion,
           )), */
   GestureDetector(
   onTap: (){
     save();
   },
   
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
          children:  <Widget>[
          Row(
            children:[
          ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('/glu');
              print('Enviando...');
              registroglucosa();
            }, 
            
            child:const Text('Guardar',style: TextStyle(fontSize: 25),)),
            ]
          )
     ],
        ),

   )
     ],
   );
 }



 String? validatePassword(String value) {
   print("valorrr $value passsword ${observacion.text}");
   if (value != observacion.text) {
     return "Las contraseñas no coinciden";
   }
   return null;
 }

 /* String? validateName(String value) {
   String pattern = r'(^[a-zA-Z ]*$)';
   RegExp regExp = RegExp(pattern);
   if (value.length == 0) {
     return "El nombre es necesario";
   } else if (!regExp.hasMatch(value)) {
     return "El nombre debe de ser a-z y A-Z";
   }
   return null;
 } */
/* 
 String? validateMobile(String value) {
   String patttern = r'(^[0-9]*$)';
   RegExp regExp = RegExp(patttern);
   if (value.length == 0) {
     return "El telefono es necesariod";
   } else if (value.length != 10) {
     return "El numero debe tener 10 digitos";
   }
   return null;
 } */

 String? validateEmail(String value) {
   String pattern =
       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
   RegExp regExp = RegExp(pattern);
   if (value.length == 0) {
     return "El correo es necesario";
   } else if (!regExp.hasMatch(value)) {
     return "Correo invalido";
   } else {
     return null;
   }
 }

 save() {
   if (keyForm.currentState.validate()) {
/*      print("Nombre ${Nombre.text}");
     print("Telefono ${Telefono.text}"); */
     print("Correo ${nivel.text}");
         keyForm.currentState.reset();
   }
 }
}
