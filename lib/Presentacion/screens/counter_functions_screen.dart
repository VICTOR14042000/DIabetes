// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print, prefer_is_empty, unused_local_variable, sort_child_properties_last, dead_code, empty_catches, prefer_function_declarations_over_variables, prefer_interpolation_to_compose_strings

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
 TextEditingController  Nombre = TextEditingController();
 TextEditingController  Email = TextEditingController();
 TextEditingController  Tipo = TextEditingController();
 TextEditingController  Alergia = TextEditingController();
 TextEditingController  Telefono = TextEditingController();
 TextEditingController  Genero = TextEditingController();
 TextEditingController  Emergencia = TextEditingController();
 TextEditingController  passwordCtrl = TextEditingController();
 TextEditingController  repeatPassCtrl = TextEditingController();
  get keyForm => null;
  
final firebase=FirebaseFirestore.instance;

registroUsuario() async{
    try{
      await firebase.collection('Usuarios').doc().set(
        {
          'Nombre':Nombre.text,
          'Email':Email.text,
          'Tipo de Diabetes':Tipo.text,
          '¿Posee alguna alergia?':Alergia.text,
          'Numero de Teléfono':Telefono.text,
          'Numero de Emergencia':Emergencia.text,
          'Contraseña':passwordCtrl.text,
          'Repetir Contraseña':repeatPassCtrl.text,
          'Genero':Genero.text
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

 title: const Text('Registrese'),
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
   var validatetelefono;
   var validatetemergencia;
   var validateNombre;
   var validateEmail;
   var validateContrasena;
   var listaDeOpciones;
   var child;
   var validatetipo;
   var validatealergia;
   return  Column(
     children: <Widget>[
       formItemsDesign(
           Icons.person,
           TextFormField(
             controller: Nombre,
             decoration: const InputDecoration(
               labelText: 'Nombre',
             ),
             validator: validateNombre,
           )),
       formItemsDesign(
           Icons.phone,
           TextFormField(
             controller: Telefono,
               decoration: const InputDecoration(
                 labelText: 'Numero de telefono',
               ),
               keyboardType: TextInputType.phone,
               maxLength: 10,
               validator: validatetelefono,)),
               formItemsDesign(
           Icons.phone,
           TextFormField(
             controller: Emergencia,
               decoration: const InputDecoration(
                 labelText: 'Numero de Emergencia',
               ),
               keyboardType: TextInputType.phone,
               maxLength: 10,
               validator: validatetemergencia,)),
      /*  formItemsDesign(
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
           Icons.person,
           TextFormField(
             controller: Genero,
               decoration: const InputDecoration(
                 labelText: 'Genero',
               ),
               keyboardType: TextInputType.text,
               maxLength: 32,
               validator: validatetipo,)),


     formItemsDesign(
           Icons.water_drop,
           TextFormField(
             controller: Tipo,
               decoration: const InputDecoration(
                 labelText: 'Tipo de Diabetes',
               ),
               keyboardType: TextInputType.text,
               maxLength: 32,
               validator: validatetipo,)),
    
  formItemsDesign(
           Icons.water_drop,
           TextFormField(
             controller: Alergia,
               decoration: const InputDecoration(
                 labelText: '¿Posee alguna Alergia?',
               ),
               keyboardType: TextInputType.text,
               maxLength: 32,
               validator: validatealergia,)),


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
               labelText: 'Contraseña',
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
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
          children:  <Widget>[
            const SizedBox(height: 10),

          Row(
            children:[
          ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('/principal');
              print('Enviando...');
              registroUsuario();
            }, 
            
            child:const Text('Registrarse',style: TextStyle(fontSize: 25),)),
            ]
          )
     ],
        ),
   ),
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

 String? validateName(String value) {
   String pattern = r'(^[a-zA-Z ]*$)';
   RegExp regExp = RegExp(pattern);
   if (value.length == 0) {
     return "El nombre es necesario";
   } else if (!regExp.hasMatch(value)) {
     return "El nombre debe de ser a-z y A-Z";
   }
   return null;
 }

 String? validateMobile(String value) {
   String patttern = r'(^[0-9]*$)';
   RegExp regExp = RegExp(patttern);
   if (value.length == 0) {
     return "El telefono es necesariod";
   } else if (value.length != 10) {
     return "El numero debe tener 10 digitos";
   }
   return null;
 }

String? validatealergia(String value) {
   String pattern = r'(^[a-zA-Z ]*$)';
   RegExp regExp = RegExp(pattern);
   if (value.length == 0) {
     return "Debe de dar una respuesta";
   } else if (!regExp.hasMatch(value)) {
     return "La respuesta debe ser No o Si y que alergia posee";
   }
   return null;
 }

  String? validatetemergencia(String value) {
   String patttern = r'(^[0-9]*$)';
   RegExp regExp = RegExp(patttern);
   if (value.length == 0) {
     return "El telefono es necesariod";
   } else if (value.length != 10) {
     return "El numero debe tener 10 digitos";
   }
   return null;
 }


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
     print("Nombre ${Nombre.text}");
     print("Telefono ${Telefono.text}");
     print("Emergencia ${Emergencia.text}");
     print("Tipo ${Tipo.text}");
     print("Correo ${Email.text}");
     print("passwordCtrl ${passwordCtrl.text}");
      print("repeatPassCtrl ${repeatPassCtrl.text}");
         keyForm.currentState.reset();
   }
 }
}
