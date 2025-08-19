import 'package:flutter/material.dart';

class ToolsDesign {

  // **************** **************** Variables **************** **************** //
  
  final List<Color> colorBody_ = [
    const Color.fromARGB(255, 29, 27, 51), 
    const Color.fromARGB(216, 29, 27, 51)
  ];

  final List<Color> colorContainer_ = [
    const Color.fromARGB(51, 0, 236, 243), 
    const Color.fromARGB(25, 0, 236, 243)
  ];

  final Color colorTitle = Colors.cyanAccent;
  final Color colorText = const Color.fromARGB(255, 191, 245, 247);
  
  final Color colorItems = const Color.fromARGB(178, 29, 27, 51);

  // **************** **************** Funciones **************** **************** //
  
  Padding createWidgetPadding({String text='', bool weight=false, int width=150}) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      
      child: Container(
        width: width.toDouble(),

        decoration: BoxDecoration(
          color: colorItems,
          borderRadius: const BorderRadius.all(Radius.circular(10))
        ),

        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),

        child: Text(
          text, 
          textAlign: TextAlign.center, 
          
          style: TextStyle(
            color: colorText, 
            fontSize: 20, 
            fontWeight: weight ? FontWeight.bold : FontWeight.normal
          )
        )
      ),
    );
  }

  Row createRow({
      required List<String> elements, bool weight = false, bool other = false, int width=150
    }) {

    List<Widget> filas = [];

    for (final e in elements) {
      if (elements.indexOf(e) == 0 && weight == false && other == false) {
        weight = true; other = true;

      } else if (other == true) {
        weight = false;
      }

      filas.add(createWidgetPadding(
        weight: weight, width: width, text: e
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: filas,
    );
  }

  List<Radius> obtainRadius(List<int> nums) {
    return nums.map((e) => Radius.circular(e.toDouble())).toList();
  }

  // **************** **************** Container Creator **************** **************** //
  
  SingleChildScrollView createContainer({widget_, double numMargin=16, bool scrollHorizontal=true}) {
    final contBR = obtainRadius([10, 40, 40, 10]);

    return SingleChildScrollView(
      scrollDirection: scrollHorizontal ? Axis.horizontal : Axis.vertical,

      child: Container(
        padding: const EdgeInsets.all(10),
      
        decoration: BoxDecoration(
          gradient: LinearGradient(
      
            colors: colorContainer_,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter 
          ),
          
          borderRadius: BorderRadius.only(
            topRight: contBR[0], topLeft: contBR[1], 
            bottomRight: contBR[2], bottomLeft: contBR[3]
          ),
      
          border: Border.all(color: const Color.fromARGB(255, 0, 236, 243), width: 3)
        ),
      
        margin: numMargin == 16 ? EdgeInsets.all(numMargin) 
          : const EdgeInsets.fromLTRB(16, 60, 16, 16),
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: widget_,
        ),
      ),
    );
  }
}

// * Author: FV - Francisco Vélez
