// ignore_for_file: camel_case_types, unused_element, unnecessary_const, sort_child_properties_last, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, unused_local_variable, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";

 
class ver extends StatefulWidget {
  const ver({super.key});


  @override
  State<StatefulWidget> createState()=>_verState();


}

class _verState extends State<ver>{
  final firebase=FirebaseFirestore.instance;


  @override
  Widget build(BuildContext context) {
 
 return Scaffold(
    appBar: AppBar(
		backgroundColor: const Color.fromARGB(255, 73, 156, 204),
      title: const Text("Registro"),
    ),

     

    body: Container(
      // child : SingleChildScrollView(
      child:Center(
        
        child: StreamBuilder<QuerySnapshot>(
       stream: FirebaseFirestore.instance.collection('Medir').snapshots(),

 


          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) return const CircularProgressIndicator();
            return ListView.builder(
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (BuildContext context, int index ) {
                                   
          
           //   List<DataCell> strings = List<DataCell>.from();
                    
      /*     List<DataCell> widgets = [
                (snapshot.data?.docs[index]['Fecha']),
                (snapshot.data?.docs[index]['Nivel']),
                (snapshot.data?.docs[index]['Observación']),
              ]; */



               return Card(
                  child: Column(
                                //    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                         

               
  Row( 
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Content of my Row
                                 
            //Item 1/4
            Container(

              padding: const EdgeInsets.all(20),
              child:  Text('Fecha ',style: TextStyle( fontWeight: FontWeight.bold)),
            ),

            //Item 2/4
            Container(
              padding: const EdgeInsets.all(30),
              child:  Text('Nivel de Glucosa',style: TextStyle( fontWeight: FontWeight.bold)),
            ),

            //Item 3/4
            Container(
              padding: const EdgeInsets.all(20),
              child: Text('Observación',style: TextStyle( fontWeight: FontWeight.bold)),
            ),
          ],
        ),
                  
         Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            // Content of my Row

            //Item 1/4
            Container(
              padding: const EdgeInsets.all(30),
              child:  Text(snapshot.data?.docs[index]['Fecha'], style: TextStyle(fontSize: 15)),
            ),

            //Item 2/4
            Container(
              padding: const EdgeInsets.all(30),
              child:  Text(snapshot.data?.docs[index]['Nivel'], style: TextStyle(fontSize: 15)),
            ),

            //Item 3/4
            Container(
              padding: const EdgeInsets.all(30),
              child: Text(snapshot.data?.docs[index]['Observación'], style: TextStyle(fontSize: 15)),
            ),

          ],
        ),


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
  



