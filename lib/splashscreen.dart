import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/helloworld.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState(){
   super.initState();
   Timer(Duration(seconds: 5),()
   => Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (context)
       => const HelloWorld()),),);
   print("done");
 }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("manthan",style: TextStyle(
          fontSize: 30,color: Colors.blueAccent
        ),),
      ),
    );
  }
}
