import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/services/asset_bundle.dart';

void main() {
  runApp(MenuUsuario());
}

class MenuUsuario extends StatefulWidget{
  State<MenuUsuario> createState()=> _MenuUsuario();
}

class _MenuUsuario extends State<MenuUsuario>{

  @override
  Widget build (BuildContext context){
    return MaterialApp(
        theme: ThemeData(
          primaryColorLight: Colors.white,
          primarySwatch: Colors.indigo,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: //Colors.black;


          Center(

            child:

            Container(

              margin: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10
              ),
              padding: EdgeInsets.only(
                  top: 30
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () { },
                        child:
                        const Icon(Icons.arrow_back),

                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Color.fromARGB(255, 2, 71, 165),
                    child: Padding(
                      padding: const EdgeInsets.all(8), // Border radius
                      child: ClipOval(child: Image.network('https://i.pinimg.com/280x280_RS/e3/b7/b5/e3b7b5186b0f00184839c2e0e888e3f4.jpg')),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Maria R.',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                        GoogleFonts.mukta(

                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16),
                      FloatingActionButton.extended(
                        label: const Text('Editar Perfil'),
                        onPressed: () {
                          //
                        },
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          splashColor: Colors.black26,
                          onTap: () {},
                          child:
                          Ink.image(
                            image:AssetImage('assets/imagenes/confi.png'),
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,)

                      ),
                      Text(
                        'Configuracion.',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                        GoogleFonts.mukta(

                          color: Colors.grey[400],
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Ink.image(
                        image: AssetImage("assets/imagenes/user.png"),
                        height: 50,
                        width: 50,),
                      Column(
                        children: [Text(
                          'Gestion De',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style:
                          GoogleFonts.mukta(

                            color: Colors.grey[400],
                            fontWeight: FontWeight.normal,
                            fontSize: 30,
                          ),
                        ),
                          Text(
                            'Usuarios',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style:
                            GoogleFonts.mukta(

                              color: Colors.grey[400],
                              fontWeight: FontWeight.normal,
                              fontSize: 30,
                            ),
                          )],
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: (){
                        },
                        label: const Text("Salir") ,
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
//Autora ||Andrea Gonzalez Diaz||  \_(°_°)_/
