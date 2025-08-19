import 'package:flutter/material.dart';

import 'Design/container1.dart';
import 'Design/container2.dart';
import 'Design/tools_design.dart';

// **************** **************** Run **************** **************** //
void main() {
  runApp(const MainApp());
}

// **************** **************** Aplicacion **************** **************** //
class MainApp extends StatefulWidget {
  
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  // **************** **************** Build **************** **************** //
  @override
  Widget build(BuildContext context) {
    var tools = ToolsDesign();

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Container(     
          height: 1000,

          decoration: BoxDecoration(
            gradient: LinearGradient(

              colors: tools.colorBody_,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),

          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: Column(
              children: [
                Container1(),
                Container2()
              ]
            )
          ),
        ),
      )
    );
  }
}

// * Author: FV - Francisco Vélez
