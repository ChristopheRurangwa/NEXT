import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:next/Credetials.dart';
import 'package:next/Starter.dart';

class Welcome extends StatefulWidget {
  static String screen = "Welcome";

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.teal[400],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      // decoration: BoxDecoration(color: Colors.teal[700],border: Border.all(color: Colors.white)),

                      height: 60,
                      width: 450,
                      // color: Colors.transparent,
                      child: Center(
                          child: Text(
                        "NEXT",
                        style: GoogleFonts.dancingScript(fontSize: 33),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Icon(
                    Icons.videocam,
                    size: 60,
                    color: Colors.greenAccent,
                  ))
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: 140,
                ),
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[700],
                        border: Border.all(color: Colors.greenAccent)),
                    height: 100,
                    width: 105,
                    //color: Colors.teal[700],
                    child: Center(child: Text("Connect  with ")),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[200],
                        border: Border.all(color: Colors.greenAccent)),
                    height: 44,
                    width: 105,
                    // color: Colors.teal[400],
                    child: Center(
                        child: Text(
                      "EveryOne",
                      style:
                          TextStyle(fontSize: 21, fontStyle: FontStyle.italic),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[700],
                        border: Border.all(color: Colors.greenAccent)),
                    height: 100,
                    width: 100,
                    //color:Colors.teal[700],
                    child: Center(child: Text(" from ")),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          border: Border.all(color: Colors.greenAccent)),
                      height: 44,
                      width: 101.2,
                      child: Center(
                          child: Text(
                        "Anywhere",
                        style: TextStyle(
                            fontSize: 10, fontStyle: FontStyle.italic),
                      )),
                    ),
                  )
                ],
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: SizedBox(
                    height: 314,
                  )),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.teal[700],
                      border: Border.all(color: Colors.greenAccent),
                    ),
                    height: 33,
                    width: 105,
                    child: FlatButton(
                      splashColor: Colors.lightGreenAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, Starter.screen);
                      },
                      child: Text(
                        "BACK",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Flexible(
                      child: SizedBox(
                    width: 113,
                  )),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[700],
                        border: Border.all(color: Colors.greenAccent)),
                    height: 33,
                    width: 105,
                    //color: Colors.teal[700],
                    child: FlatButton(
                      splashColor: Colors.lightGreenAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, Credentials.screen);
                      },
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
