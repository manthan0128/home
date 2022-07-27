import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/picturefile.dart';

class Practical13 extends StatefulWidget {
  const Practical13({Key? key}) : super(key: key);

  @override
  State<Practical13> createState() => _Practical13State();
}

class _Practical13State extends State<Practical13> {
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
              

                child: InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/download (1).jpeg',
                      fit: BoxFit.fill,
                      height: 300,
                      width: 300,),
                  ),
                  onTap: (){
                    print("tapped");
                  },
                ),
              ),
              InkWell(
                child: TextButton(onPressed: (){},
                    child: Text("manthan",),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amberAccent)),
                  ),
                onDoubleTap: (){
                  print("double tapped");
                },
              ),
              SizedBox(height: 20,),

              InkWell(
                child: TextButton(onPressed: (){},
                  child: Text("manthan",),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amberAccent)),
                ),
                onLongPress: (){
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context)=>PictureFile()),);
                  // print("long tapped");
                },
              ),
              TextField(
                controller: textFieldController,
                style: TextStyle(fontSize: 30,color: Colors.black),
              ),
              RaisedButton(
                child: Text("screen 2"),
                  onPressed: (){
                  _sendDataToPictureFile(context);
                  },
              )
            ],
          ),
        ),
      ),
    );
    
  }
  void _sendDataToPictureFile(BuildContext context){

    String textToSend = textFieldController.text;
    Navigator.push(context,
      MaterialPageRoute(builder: (context)
      => PictureFile(text : textToSend),),);
  }
}
