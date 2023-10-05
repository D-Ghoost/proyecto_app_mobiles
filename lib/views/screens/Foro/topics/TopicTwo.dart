import 'package:flutter/material.dart';

class TopicTwo extends StatefulWidget{
  const TopicTwo({super.key});

  @override
  State<TopicTwo> createState() => _TopicTwoState();

}

class _TopicTwoState extends State<TopicTwo>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 106, 107, 107),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.create_rounded),
        backgroundColor: const Color.fromARGB(255, 106, 107, 107),
        
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            /* Avatar */
             Container(
              padding: EdgeInsets.all(25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child:const CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 30,
                    ),                
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 10, top: 5),
                        child: const Text(
                          'Aura López',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Hace un mes',
                          style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                      ),
                    ],
                  )
                ],
              ),
             ),
          /* Publicacion */
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                '¿Qué debo hacer si tengo una convulsión?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                )
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
                )
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
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
              ),
              const Divider(
                color: Colors.black45,
                height: 20,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              /* Respuestas */
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'Respuestas 1',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
                decoration:const BoxDecoration(
                  color: Color.fromRGBO(174, 171,171, 0.2),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child:  Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child:const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 30,
                            ),                
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 10, top: 5),
                                child: const Text(
                                  'Pedro Herrera',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Text(
                                  'Hace un mes',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: const Text(
                        'Es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        )
                    ),
                  ],
                )
              ),
             
          ],
        ),
      )
    );
  }
}