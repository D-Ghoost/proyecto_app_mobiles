import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

bool debugShowCheckedModeBanner = false;



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'SpartanMB'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/1.png'),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Hola!',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF0148A5),
                  fontFamily: 'SpartanMB',
                  fontWeight: FontWeight.w800,
                ),
              ),
              //margin: EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: Text(
                'Bienvenido a tu sistema de monitoreo de salud.',
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'SpartanMB',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF696D7D),
                ),
              ),
              margin: EdgeInsets.only(bottom: 20),
            ),
            ElevatedButton(
              child: Text('Comencemos!'),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF0148A5)),
                minimumSize: MaterialStateProperty.all(Size(150, 50)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                elevation: MaterialStateProperty.all(10),
                shadowColor: MaterialStateProperty.all(Colors.grey),
                //padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

