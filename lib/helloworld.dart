

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/picturefile.dart';
import 'package:new_project/practical_13.dart';

// void main(){
//   runApp(MaterialApp(
//       title: 'Navigation',
//     theme: ThemeData(
//       primarySwatch: Colors.red,
//     ),
//     initialRoute: '/',
//     routes:{
//         '/':(context) => PictureFile(),
//       '/second':(context) => Practical13(),
//     },
//   ),
//   );
// }


class HelloWorld extends StatefulWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            child:Center(
              child: TextButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)
              =>Practical13()),);
                    
              },
                child:Text("Manthan") ,
              ),
            ),
          ),
        ],
    ),
        ),
      ),
    );
  }
}
