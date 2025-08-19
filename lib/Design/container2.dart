import 'package:flutter/material.dart';
import 'package:shedule_rd/Design/tools_design.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    var tools = ToolsDesign();

    return tools.createContainer(widget_: <Widget>[
      Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            width: 210,

            child: Text( 'Jornada Tarde', 
            style: TextStyle(

              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: tools.colorTitle,
            )),
          ),

          Container(
            width: 160,
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),

            child: Text('Version 1.1 VIP', 
              textAlign: TextAlign.right,

              style: TextStyle(
                color: tools.colorTitle,
                fontSize: 17,
                fontWeight: FontWeight.bold
              )
            ),
          ),
        ],
      ),
  
      tools.createRow(
        elements: ['hora 1\n12:30', 'hora 2\n01:25', 'hora 3\n02:20', 'hora 4\n03:15'], 
        other: true, width: 90
      ),
  
      tools.createRow(
        elements: ['hora-D\n04:10', 'hora 5\n04:40', 'hora 6\n05:35', 'hora-S\n06:30'], 
        other: true, width: 90
      ),
      
      Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            width: 240,

            child: Text( 'Nombre: \nFrancisco J. Velez O.',
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              color: tools.colorText,
            )),
          ),

          Container(
            width: 120,
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),

            child: Text('Grado: 10-01', 
              textAlign: TextAlign.right,

              style: TextStyle(
                color: tools.colorText,
                fontSize: 24,
                fontWeight: FontWeight.bold
              )
            ),
          ),
        ],
      ),

      Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            width: 190,

            child: Text( 'Autor: FV - FraVelz', 
            style: TextStyle(

              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: tools.colorTitle,
            )),
          ),

          Container(
            width: 170,
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),

            child: Text('IED Montebello, Bogota-Colombia', 
              textAlign: TextAlign.right,

              style: TextStyle(
                color: tools.colorTitle,
                fontSize: 17,
                fontWeight: FontWeight.bold
              )
            ),
          ),
        ],
      ),
    ]);
  }
}