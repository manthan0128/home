import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PictureFile extends StatefulWidget {

  final  text;
  const PictureFile({Key? key,required this.text}) : super(key: key);

  @override
  State<PictureFile> createState() => _PictureFileState();

}

class _PictureFileState extends State<PictureFile> {
  Future<bool>_WillPopCallBack()async{
     showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text("Exit form here"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                child: Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                  Navigator.pop(context);
                },
                child: Text('yes'),
              ),

            ],

          );
        }
    );
     return true;
    }


  @override

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _WillPopCallBack,
      child: Scaffold(
        appBar: AppBar(title: Text("Picturefile"),),
          body: Center(
            child: Column(
              children: [
                Container(
                 height: 400,
                  width: 300,

                  child: FittedBox(
                    fit: BoxFit.fill,
                 child: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                ),
                  
                ),
                Text(widget.text,),

              ],

            ),
            
          ),
        
        ),
    );
  }
}
