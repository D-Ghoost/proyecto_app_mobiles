import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(edicionperfil());
}

class edicionperfil extends StatefulWidget{
   const edicionperfil ({ super.key });

  @override
  State<edicionperfil> createState()=> _Editarperfil();
}

class _Editarperfil extends State<edicionperfil>{
  String _nombres ="";
  String _responsable ="";
  String _telefoResponsable ="";

  @override
  Widget build (BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: "perfil",
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                         },
                        child:
                        const Icon(Icons.arrow_back),

                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 40,
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.indigo,
                    child: Padding(
                      padding: const EdgeInsets.all(8), // Border radius
                      child: ClipOval(child: Image.network('https://i.pinimg.com/280x280_RS/e3/b7/b5/e3b7b5186b0f00184839c2e0e888e3f4.jpg')),
                    ),
                  ),
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
                  ),
                  Text(
                    'Condicion: Epilepcia',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style:
                    GoogleFonts.mukta(

                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Nombre:',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                        GoogleFonts.mukta(

                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Maria Paula Romero Linares',


                    ),
                    onChanged: (String nombre) {

                      setState(() {
                        _nombres = nombre;
                      });
                    },
                  ),
                  Text(_nombres),
                  Row(
                    children: [
                      Text(
                        'Nombre Responsable:',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                        GoogleFonts.mukta(

                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Daniel Romero'
                    ),
                    onChanged: (String text) {

                      setState(() {
                        _responsable = text;
                      });
                    },
                  ),
                  Text(_responsable),
                  Row(
                    children: [
                      Text(
                        'Telefono Responsable:',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                        GoogleFonts.mukta(

                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: '310 000 2222'
                    ),
                    onChanged: (String text) {
                      setState(() {
                        _telefoResponsable = text;
                      });
                    },
                  ),
                  Text(_telefoResponsable),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: (){
                          
                        },
                        label: const Text("GUARDAR"),
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
