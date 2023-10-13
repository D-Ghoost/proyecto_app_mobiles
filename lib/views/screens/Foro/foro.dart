
import 'package:flutter/material.dart';
import 'package:proyecto_app_mobiles/views/screens/Foro/topics/TopicTwo.dart';

class Foro extends StatefulWidget {
  const Foro({ super.key });

  @override
  State<Foro> createState() => _ForoState();
}

class _ForoState extends State<Foro>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 106, 107, 107),
      ),
      body: ListView(
        children:  [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Un Foro para Ti',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              )
          ),
          // Foro 1
          Container(
            width: 350,
            height: 175,
            margin: const EdgeInsets.only(top:15, left: 20, right: 20),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10)
            ),
            constraints: const BoxConstraints(
              maxHeight: 400,
              maxWidth: 200
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child:const Text(
                    '1/08/2023',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10),
                  child: const Text(
                    '¿Hay alimentos o bebidas que debo evitar si tengo epilepsia o hipertensión?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  // Hacer slider
                  child: Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: (){},
                        child: const Text('#epilepsia'),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: const Text('#hipertension'),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: const Text('#cuidados'),
                      )
                    ],
                  ),
                )
              ],
            ),
            
          ),
          // Foro 2
          GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TopicTwo()),
            );
          },
          child: Container(
              width: 350,
              height: 160, 
              margin: const EdgeInsets.only(top:15, left: 20, right: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10)
              ),
              constraints: const BoxConstraints(
                maxHeight: 400,
                maxWidth: 200
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child:const Text(
                        '21/08/2023',
                        style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top:10),
                      child: const Text(
                        '¿Qué debo hacer si tengo una convulsión?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          TextButton(
                            onPressed: (){},
                            child: const Text('#epilepsia'),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: const Text('#cuidados'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
            ),

          ),
          // Foro 3
          Container(
            width: 350,
            height: 160,
            margin: const EdgeInsets.only(top:15, left: 20, right: 20),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10)
            ),
            constraints: const BoxConstraints(
              maxHeight: 400,
              maxWidth: 200
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child:const Text(
                    '1/08/2023',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10),
                  child: const Text(
                    '¿Qué pruebas debo realizarme para diagnosticar la hipertensión?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: (){},
                        child: const Text('#hipertension'),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: const Text('#examen'),
                      ),
                    ],
                  ),
                )
              ],
            )
          ),
        ],
      )
    );
  }

}