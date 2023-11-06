// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

import "package:cloud_firestore/cloud_firestore.dart";


FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getUsuarios() async{
  
  List Usuarios=[];

  CollectionReference collectionRerenceUsuarios = db.collection('Usuarios');

  QuerySnapshot queryUsuarios= await collectionRerenceUsuarios.get();

  queryUsuarios.docs.forEach((documento){

    Usuarios.add(documento.data());

  });

  return Usuarios;
}
