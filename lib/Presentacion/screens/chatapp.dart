// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, unused_local_variable, prefer_typing_uninitialized_variables, avoid_types_as_parameter_names, avoid_print, duplicate_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, dead_code, unused_element, unused_import, recursive_getters

import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_diabetes_1/Presentacion/screens/constans.dart';

import 'package:http/http.dart';
//import 'package:flutter_diabetes_1/Presentacion/screens/constans.dart';





class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenAI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const ChatScreen(title: 'OpenAI gpt-3 + Flutter',)
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.title});

  final String title;

  @override
  State<ChatScreen> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final _formkey = GlobalKey<FormState>();
  bool esperando = true;
  String respuesta= "Has una pregunta...";
  String pregunta= "";
  


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 10, 95, 207),
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FractionallySizedBox(
                      widthFactor: 1,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: Text(respuesta, style: TextStyle(fontSize: 20, color: Colors.black)),
                    ), 
                     ),  
                      
                        ), 
                        
                     ), 
                   
                    
                    ),
              Flexible(flex:0,
              child: Form(
                key:_formkey,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                              borderSide:BorderSide(color: Colors.black, style: BorderStyle.solid),
                           ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, style: BorderStyle.solid),
                              ),
                            ),
                            onSaved: (value){
                              pregunta=value!;
                            },
                                 ),
                        ),
                         ),
                         ),
                    Flexible(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFa9e0d2))),
                          onPressed: () {
                            _formkey.currentState!.save();
                           _formkey.currentState!.reset();
                          setState(() {
                            esperando=true;
                          });

                            FocusManager.instance.primaryFocus?.unfocus();
                          }, 
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              "??",
                              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,), 
                            ),
                             ),
                        ),
                      ),
                      ),
                  ],
                ),
                ),
                ),

              ],
            ),
          ),
          Offstage(
            offstage: !esperando,
            child: Center(
              child: Center(
                child: CircularProgressIndicator(),
              ) ),
          )
        ],
      ),
    );

    @override
    void initState(){
      super.initState();
      esperando=false;
    }
  }



void hacerpregunta(BuildContext context, String text)async{
   final openAI = OpenAI.instance.build(
    token: "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",
    baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 5)),
    enableLog: true);


 final request=CompleteText(prompt:text, model: DavinciModel(), maxTokens: 200);

  
    openAI.onCompletionSSE(request: request).listen((Response){
      print(Response);
        setState((){
             esperando=false;
            respuesta=Response.choices.first.text;
            pregunta="";

        });
    }).onError((err){
      print("$err");
    }); 
}

}