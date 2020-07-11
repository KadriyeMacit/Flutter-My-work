import 'package:animated_qr_code_scanner_example/new_screen.dart';
import 'package:flutter/material.dart';

import 'package:animated_qr_code_scanner/animated_qr_code_scanner.dart';
import 'package:animated_qr_code_scanner/AnimatedQRViewController.dart';


class TestPage extends StatelessWidget {
  final AnimatedQRViewController controller = AnimatedQRViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: AnimatedQRView(
              squareColor: Colors.green.withOpacity(0.25),
              animationDuration: const Duration(milliseconds: 600),
              onScanBeforeAnimation: (String str) {
                print('Callback at the beginning of animation: $str');
              },
              onScan: (String str) async {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Callback at the end of animation: $str'),
                    actions: [
                      FlatButton(
                        child: const Text('OK'),
                        onPressed: () {


                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewPage(str)));


                        },
                      ),
                      FlatButton(
                        child: const Text('Rescan'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          controller.resume();
                        },
                      ),
                    ],
                  ),
                );
              },
              controller: controller,
            ),
          ),
          Container(


            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.deepOrangeAccent,
                  child: const Text('Flash'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    controller.toggleFlash();
                  },
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: IconButton(
                    color: Colors.deepOrangeAccent,
                    iconSize: 34,
                    icon: Icon(Icons.cached),
                    onPressed: () {
                      controller.flipCamera();
                    },
                  ),
                ),
                const SizedBox(width: 10),
                FlatButton(
                  color: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  child: const Text('Resume'),
                  onPressed: () {
                    controller.resume();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
