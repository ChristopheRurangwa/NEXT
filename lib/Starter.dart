import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:next/Welcome.dart';

class Starter extends StatefulWidget {
  static String screen = "Starter";
  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[400],
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: Colors.transparent,
          title: Center(child: Text("NEXT",style:GoogleFonts.dancingScript(fontSize: 33),)),

        ),
        body: Column(
          children: [
            Flexible(
              child: SizedBox(
                height: 100,
              ),
            ),
            Text(
              "Pick your Nick Name",
              style: TextStyle(fontSize: 20),
            ),
            Flexible(
              child: SizedBox(
                height: 21,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.teal,
                    focusColor: Colors.green,
                    labelText: "Nick-Name...",
                    prefixIcon: const Icon(Icons.account_circle)),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 45,
              ),
            ),
            Text(
              "Enter Your Email",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,

                obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email...",
                  prefixIcon: const Icon(Icons.email)),
            ),
            ),
            Flexible(
              child: SizedBox(
                height: 21,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.teal[700],
                    border: Border.all(color: Colors.greenAccent)),
                //color: Colors.teal[600],
                child: FlatButton(
                  splashColor: Colors.lightGreenAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, Welcome.screen);
                  },
                  child: Text("Next",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                )),
          ],
        ),
      ),
    );
  }
}
