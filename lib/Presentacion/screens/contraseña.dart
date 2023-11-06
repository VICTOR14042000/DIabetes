// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print, prefer_is_empty, unused_local_variable, file_names, prefer_interpolation_to_compose_strings

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Contrasena extends StatefulWidget {
  const Contrasena({super.key});

  @override
  State<Contrasena> createState() => _ContrasenaState();
}

class _ContrasenaState extends State<Contrasena> {
//  GlobalKey<FormState> Codigo = GlobalKey();
//  TextEditingController  Nombre = TextEditingController();
 TextEditingController  Email = TextEditingController();
 //TextEditingController  Telefono = TextEditingController();
 TextEditingController  passwordCtrl = TextEditingController();
 TextEditingController  repeatPassCtrl = TextEditingController();
 
  get keyForm => null;

 actulizarDatos() async{
      try{
          CollectionReference ref=FirebaseFirestore.instance.collection('Usuarios');
          QuerySnapshot usuario=await ref.get();

          if (usuario.docs.length!=0){
            for(var cursor in usuario.docs){
              if(cursor.get('Email')==Email.text){
                print('USUARIO ENCONTRADO...');
                print(cursor.get('Nombre'));
                
              }
            }
          }else{
            print('No hay documentos en la Colección');
          }
      }catch(e){
        print('ERROR...'+e.toString());
      }
  }



 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: const Text('Nueva Contraseña'),
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
/*    var validatetelefono;
   var validateNombre; */
   var validateEmail;
   var validateContrasena;
   return  Column(
     children: <Widget>[
       /* formItemsDesign(
           Icons.person,
           TextFormField(
             controller: Nombre,
             decoration: const InputDecoration(
               labelText: 'Nombre',
             ),
             validator: validateNombre,
           )), */
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
           Icons.email,
           TextFormField(
             controller: Email,
               decoration: const InputDecoration(
                 labelText: 'Email',
               ),
               keyboardType: TextInputType.emailAddress,
               maxLength: 32,
               validator: validateEmail,)),
       formItemsDesign(
           Icons.remove_red_eye,
           TextFormField(
             controller: passwordCtrl,
             obscureText: true,
             decoration: const InputDecoration(
               labelText: 'Contraseña Nueva',
             ),
           )),
       formItemsDesign(
           Icons.remove_red_eye,
           TextFormField(
             controller: repeatPassCtrl,
             obscureText: true,
             decoration: const InputDecoration(
               labelText: 'Repetir la Contraseña',
             ),
             validator: validateContrasena,
           )),
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
              Navigator.of(context).pushNamed('/principal');
              actulizarDatos();
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
   print("valorrr $value passsword ${passwordCtrl.text}");
   if (value != passwordCtrl.text) {
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
     print("Correo ${Email.text}");
         keyForm.currentState.reset();
   }
 }
}
