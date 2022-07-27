import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body:  ElevatedButton(onPressed: (){
        _navigateAndDiaplaySelection(context);
      },
        child: Text("Data pass"),
      ),
    );
  }
  Future<void>  _navigateAndDiaplaySelection(BuildContext context)async {
    final result = await Navigator.push(context,
        MaterialPageRoute(builder: (context)=>Data()),);
    if(! mounted) return;
    ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
  }
}
