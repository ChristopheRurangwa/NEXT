import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:next/Welcome.dart';

class Credentials extends StatefulWidget {
  static String screen = "Credetials";
  @override
  _CredentialsState createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Padding(

      padding: const EdgeInsets.all(8.0),

      child: Scaffold(

        backgroundColor: Colors.teal[400],

        body: Column(
//mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "NEXT",
                      style: GoogleFonts.dancingScript(fontSize: 33),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 55,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Icon(
                Icons.videocam,
                size: 60,
                color: Colors.greenAccent,
              ),),
            ),
            SizedBox(height: 80,),
            Center(child: Container(child:Text("Send Link to", style: TextStyle(fontSize: 33),),)),
            SizedBox(height: 70,),
            Row(
              children: [
                Expanded(
                  child: Container(

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Email....",
                            prefixIcon: const Icon(Icons.email)),

                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 68,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[700],
                        border: Border.all(color: Colors.greenAccent)),
                    height: 33,
                    width: 105,
                    child: FlatButton(
                      splashColor: Colors.lightGreenAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, Welcome.screen);
                      },
                      child: Text(
                        "BACK",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),),
                    Expanded(child: SizedBox(width: 149,)),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.teal[700],
                          border: Border.all(color: Colors.greenAccent)),
                      height: 33,
                      width: 105,
                      child: FlatButton(
                        splashColor: Colors.lightGreenAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, "");
                        },
                        child: Text(
                          "NEXT",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
