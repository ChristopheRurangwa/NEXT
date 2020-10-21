import 'package:flutter/material.dart';
import 'package:next/Credetials.dart';
import 'package:next/Starter.dart';
import 'package:next/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
      primaryColor: Colors.white,


        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Starter.screen,
      routes: {

        Credentials.screen:(context)=>Credentials(),
        Welcome.screen:(context)=>Welcome(),
        Starter.screen:(context)=>Starter(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(""),
      ),
      body: Center(),
       //
    );
  }
}
