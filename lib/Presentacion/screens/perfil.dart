// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, unused_local_variable, avoid_unnecessary_containers, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";

 
class perfil extends StatefulWidget {
  const perfil({super.key});


  @override
  State<StatefulWidget> createState()=>_perfilState();


}

class _perfilState extends State<perfil>{
  final firebase=FirebaseFirestore.instance;
  final Email=FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
 
 return Scaffold(
    appBar: AppBar(
		backgroundColor: const Color.fromARGB(255, 73, 156, 204),
      title: const Text("Perfil"),
    ),

    body: Container(
      child:Center(
        child: StreamBuilder<QuerySnapshot>(
       stream: FirebaseFirestore.instance.collection('Usuarios').snapshots(),

      

          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) return const CircularProgressIndicator();
            return ListView.builder(
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (BuildContext context, int index) {
               return Card(
                  child: Column(
                    children: <Widget>[
          
               const CircleAvatar(
                    radius: 75,
                  backgroundImage: NetworkImage('https://cdn.icon-icons.com/icons2/2556/PNG/512/profile_picture_user_icon_153075.png'),

               ),
                     Text('Nombre:',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                     Text(snapshot.data?.docs[index]['Nombre'], style: TextStyle(fontSize: 15)),
               SizedBox(height: 30 ),
                             

                     Text('Correo Electronico: ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(snapshot.data?.docs[index]['Email'], style: TextStyle(fontSize: 15)),
               SizedBox(height: 30 ),
                              

                      Text('Género: ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(snapshot.data?.docs[index]['Genero'], style: TextStyle(fontSize: 15)),
               SizedBox(height: 30 ),
  

                     Text('Teléfono: ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(snapshot.data?.docs[index]['Numero de Teléfono'], style: TextStyle(fontSize: 15)),
               SizedBox(height: 30 ),
                     Text('Teléfono de Emergencia: ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                       Text(snapshot.data?.docs[index]['Numero de Emergencia'], style: TextStyle(fontSize: 15)),
               SizedBox(height: 30 ),
                     Text('Tipo de Diabetes: ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(snapshot.data?.docs[index]['Tipo de Diabetes'], style: TextStyle(fontSize: 15)),
               SizedBox(height: 30 ),
                     Text('¿Posee alguna alergia?: ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(snapshot.data?.docs[index]['¿Posee alguna alergia?'], style: TextStyle(fontSize: 15)),
               SizedBox(height: 30 ),
                    ],
                  ),
                );
              }
            );
          }
        )
        
      )
    )
  );
 }



  }
  



