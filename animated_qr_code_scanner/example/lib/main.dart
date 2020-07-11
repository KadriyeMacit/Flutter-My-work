import 'package:animated_qr_code_scanner_example/new_screen.dart';
import 'package:animated_qr_code_scanner_example/qr_screen.dart';
import 'package:flutter/material.dart';

import 'package:animated_qr_code_scanner/animated_qr_code_scanner.dart';
import 'package:animated_qr_code_scanner/AnimatedQRViewController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 70, 0, 70),
            child: Container(

              decoration: BoxDecoration(

                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(10)),

                boxShadow: [
                  BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
            ),
          ],

              ),



              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text("QR CODE SCANNER",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                            boxShadow: [
                        BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                      ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: IconButton(
                            icon: Icon(Icons.camera_alt),
                            iconSize: 40,
                            color: Colors.cyan,
                            onPressed: ()
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TestPage()));
                            },
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }

}