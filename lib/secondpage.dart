import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {


  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController textFieldContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: textFieldContoller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
              ),
            ),
            RaisedButton(child: Text("send to first"),
                onPressed: (){})
          ],
        ),
      ),
    );
  }

}
 void _send