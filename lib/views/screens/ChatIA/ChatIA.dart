import 'package:flutter/material.dart';

class ChatIA extends StatefulWidget{
  const ChatIA ({ super.key });

  @override
  State<ChatIA> createState() => _ChatIAState();
}


class _ChatIAState extends State<ChatIA>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 106, 107, 107),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: const Text('Hola'),
          )
        ],
      ),
    );
  }
}