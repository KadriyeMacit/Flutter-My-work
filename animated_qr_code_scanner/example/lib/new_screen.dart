import 'package:animated_qr_code_scanner_example/main.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget{

  String data;

  NewPage(this.data);

  @override
  Widget build(BuildContext context) {
   return WillPopScope(

     onWillPop: ()
     {
       Navigator.push(
           context,
           MaterialPageRoute(
               builder: (context) => MyApp()));
     },


     child: Scaffold(
       body: Center(
         child: Text(data),



       ),
     ),
   );
  }

}