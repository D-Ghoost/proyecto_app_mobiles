import 'package:flutter/material.dart';
import 'package:proyecto_app_mobiles/views/screens/Home/HomeSlidershow.dart';

class Home extends StatefulWidget{
  const Home ({ super.key });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{


  final List buttonViews = [
    [
      'Foro',
      Colors.blue,
      "/foro"
    ],
    [
      'Medicamentos',
      const Color.fromARGB(255, 0, 70, 161),
      "/medicamentos"
    ],
    [
      'Agregar Medicamento',
      Colors.blue,
      "/foro"
    ],
    [
      'Editar perfil',
      const Color.fromARGB(255, 0, 70, 161),
      "/edicion"
    ],
    [
      'Usuario',
      Colors.blue,
      "/usuario"
    ],
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 34, 187),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top:80, left: 40, right: 80),
            margin: EdgeInsets.all(10),
            child:const Text(
            'Bienvenida Maria R!',
            style: TextStyle(
              color:  Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          Container(
            margin:const EdgeInsets.only(top: 10, bottom: 30),
            padding:const EdgeInsets.only( left: 50, right: 80),
            child: const Text(
              'Buenas noches',
              style:  TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
                ),
                child: ListView(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        hintText: 'Busca tus categorias',
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.search_rounded),
                        )
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Categorías Foro',
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    HomeSliderShow(buttons: buttonViews)
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}


