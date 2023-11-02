import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(Medicamentos());
}

class Medicamentos extends StatefulWidget{
  State<Medicamentos> createState()=> _Medicamentos();
}

class _Medicamentos extends State<Medicamentos>{
  var _currentSelectTime=TimeOfDay.now();
  void callTimePicker() async{
    var  selectedTime =await getTimePickerWiddget();
    setState(() {
      _currentSelectTime=TimeOfDay.now();
    });
  }
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
                        onPressed: () { },
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
                    radius: 60,
                    backgroundColor: Colors.indigo,
                    child: Padding(
                      padding: const EdgeInsets.all(8), // Border radius
                      child: ClipOval(child: Image.network('https://img.freepik.com/vector-premium/tarro-pastillas-tabletas-icono-dibujos-animados-ilustracion-concepto-icono-medicina-sanitaria-aislado-estilo-dibujos-animados-plana_138676-1660.jpg')),
                    ),
                  ),
                  Text(
                    'Acetaminofen.',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style:
                    GoogleFonts.mukta(

                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
                        ),
                        onPressed: () { },
                        child:
                        const Icon(Icons.qr_code),

                      ),
                      Text(
                        'Qr',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                        GoogleFonts.mukta(

                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style:
                        ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () { },
                        child:
                        const Text("Info"),

                      ),
                      FloatingActionButton.extended(
                        onPressed: (){
                        },
                        label: const Text("Programar") ,
                      ),
                    ],
                  ),
                  Text(
                    'Frecuencia',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style:
                    GoogleFonts.mukta(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: Border.all(
                        color: Colors.indigo,
                        width: 8,
                      ),
                      borderRadius: BorderRadius.circular(20),

                    ),

                    child:
                    Column(
                      children: [
                        Text(
                          'Elige los dias',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style:
                          GoogleFonts.mukta(
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FloatingActionButton.extended(

                              onPressed: (){
                              },
                              label: const Text("L",) ,
                            ),
                            FloatingActionButton.extended(
                              onPressed: (){
                              },
                              label: const Text("M") ,
                            ),
                            FloatingActionButton.extended(
                              onPressed: (){
                              },
                              label: const Text("X") ,
                            ),
                            FloatingActionButton.extended(
                              onPressed: (){
                              },
                              label: const Text("J") ,
                            ),
                            FloatingActionButton.extended(
                              onPressed: (){
                              },
                              label: const Text("V") ,
                            ),
                            FloatingActionButton.extended(
                              onPressed: (){
                              },
                              label: const Text("S") ,
                            ),
                            FloatingActionButton.extended(
                              onPressed: (){
                              },
                              label: const Text("D") ,
                            ),
                          ],

                        ),
                        SizedBox(
                          height: 40,
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      FloatingActionButton.extended(
                          onPressed: callTimePicker
                          ,
                          icon: const Icon(Icons.alarm),
                          label: const Text("Horario"))
                    ],
                  ),
                  SizedBox(
                    height:100,
                  ),
                  FloatingActionButton.extended(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: (){},
                    label: const Text("Listo"),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
 Future<TimeOfDay?>getTimePickerWiddget() {
   return showTimePicker(
      context: context,
       initialTime: _currentSelectTime,
      builder: (context,child){
         return Theme(data: ThemeData.light(),child: child!);
       }
       );
 }
}


//Autora ||Andrea Gonzalez Diaz||  \_(°_°)_/
