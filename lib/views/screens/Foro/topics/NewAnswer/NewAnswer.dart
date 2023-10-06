import 'package:flutter/material.dart';
import 'package:proyecto_app_mobiles/views/screens/Foro/topics/TopicTwo.dart';

class NewAnswer extends StatefulWidget{
  const NewAnswer ({ super.key });

  @override
  State<NewAnswer> createState() => _NewAnswerState();
}

class _NewAnswerState extends State<NewAnswer>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 106, 107, 107),
      ),
      body:Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Escribe tu respuesta',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 25),
              child: const Text(
                '"Escribe con respeto y comprensión para crear un espacio acogedor para todos."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black26
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Da tu mejor consejo',
                ),
                cursorHeight: 25,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const TopicTwo())
                  );
                },
                child: const Text('Publicar'),
              ),
            )
          ],
        ),
      )
    );
  }
}