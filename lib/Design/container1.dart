import 'package:flutter/material.dart';
import 'package:shedule_rd/Design/tools_design.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    final tools = ToolsDesign();
    
    Map<String, List<String>> dias = {
      'lunes': ['18 - CPYE',   '18 - CPYE',   '16 - Fisica',   '16 - Fisica',   '19 - Español','19 - Español'],
      'martes':['19 - Español','19 - Español','18 - Filosofia','18 - Filosofia','22 - Arte',   '22 - Arte'],

      'miercoles':['17 - Math',   '17 - Math',   '19 - Ingles',   '24 - Sociales', '16 - Fisica', '12 - Quimica'],

      'jueves': ['00 - Ed. Fisica','00 - Ed. Fisica', '12 - Quimica', '12 - Quimica', '19 - ingles',  '19 - ingles'],
      'viernes':['17 - Math', '17 - Math', '18 - Religion', '18 - Etica', '16 - Tecnologia', '16 - Tecnologia']
    };

    return tools.createContainer(numMargin: 0, widget_: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Horario 2025',
        
          style: TextStyle(
            color: tools.colorTitle, 
        
            fontSize: 40, 
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            height: 1.4
          )
        ),
      ),
        
      tools.createRow(weight: true, elements: 
        ['Hora | Dia', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes']
      ),

      tools.createRow( elements:
        ['hora 1', dias["lunes"]![0], dias["martes"]![0], dias["miercoles"]![0], dias["jueves"]![0], dias["viernes"]![0]]
      ),
      tools.createRow( elements:
        ['hora 2', dias["lunes"]![1], dias["martes"]![1], dias["miercoles"]![1], dias["jueves"]![1], dias["viernes"]![1]]
      ),
      tools.createRow( elements:
        ['hora 3', dias["lunes"]![2], dias["martes"]![2], dias["miercoles"]![2], dias["jueves"]![2], dias["viernes"]![2]]
      ),
      tools.createRow( elements:
        ['hora 4', dias["lunes"]![3], dias["martes"]![3], dias["miercoles"]![3], dias["jueves"]![3], dias["viernes"]![3]]
      ),
      tools.createWidgetPadding(text: 'Descanso', width: 930, weight: true),
      tools.createRow( elements:
        ['hora 5', dias["lunes"]![4], dias["martes"]![4], dias["miercoles"]![4], dias["jueves"]![4], dias["viernes"]![4]]
      ),
      tools.createRow( elements:
        ['hora 6', dias["lunes"]![5], dias["martes"]![5], dias["miercoles"]![5], dias["jueves"]![5], dias["viernes"]![5]]
      ),
    ]);
  }
}

// * Author: FV - Francisco Vélez
