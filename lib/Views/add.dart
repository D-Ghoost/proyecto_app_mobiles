import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 80),
              child: Column(
                children: [
                Icon(
                Icons.arrow_back,
                color: Color(0xFF696d7d),
                size: 20,
              ),
              Text(
                'Hoy, 05 de Octubre',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'SpartanMB',
                  color: Color(0xFF696d7d),
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  for (String letra in ["L", "M", "X", "J", "V", "S", "D"])
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Stack(
                        children: [
                          if (letra == "J")
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF0148a5),
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                            ),
                          Text(
                            letra,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SpartanMB',
                              color: Color(0xFF7797fa),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
              ),
              Text(
                'Tus medicamentos:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SpartanMB',
                  color: Color(0xFF696d7d),
                ),
              ),
              Stack(
          children: [
          SizedBox(height: 50),
          Tarjeta(),
          ],
        ),
        ],
      ),
    ),
    ),
    ),
    );
  }
}

class Tarjeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Nombre del medicamento',
              style: TextStyle(
                fontFamily: 'SpartanMB',
                fontWeight: FontWeight.w900,
                color: Color(0xFF0148A5),
              ),
            ),
            subtitle: Text(
              'Tomar 1 pastilla por día',
              style: TextStyle(
                fontFamily: 'SpartanMB',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Otro medicamento',
              style: TextStyle(
                fontFamily: 'SpartanMB',
                fontWeight: FontWeight.w900,
                color: Color(0xFF0148A5),
              ),
            ),
            subtitle: Text(
              'Tomar 2 pastillas por día',
              style: TextStyle(
                fontFamily: 'SpartanMB',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      margin: EdgeInsets.all(20),
      elevation: 5,
    );
  }
}

