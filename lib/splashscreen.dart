import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds:15),
            ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>homee()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('Welcome to AI Quiz',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.pink),),
              SizedBox(height: 10,),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/quiz.jpg'),),
              Text("Let's challenge your AI knowledge",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              CircularProgressIndicator(
                color: Colors.redAccent,
                strokeWidth: 8,

              )
            ],
          ),
        ),
      ),
    );
  }
}
