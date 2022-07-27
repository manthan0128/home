// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class FirstPage extends StatefulWidget {
//   _FirstPageState createState(){
//
//   }
//   const FirstPage({Key? key}) : super(key: key);
//
//
//   @override
//   State<FirstPage> createState() => _FirstPageState();
// }
//
// class _FirstPageState extends State<FirstPage> {
//   final String text = 'text';
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Text(text),
//             RaisedButton(child: Text("send to first"),
//                 onPressed: (){})
//           ],
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DATA"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context,'done');
              }, child:Text("yes")),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context,'thank you');
              }, child:Text("over")),
            ],
          ),
        ),
      ),
    );
  }
}
