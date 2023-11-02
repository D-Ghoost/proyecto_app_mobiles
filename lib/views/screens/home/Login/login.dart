import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuevo/views/screens/Login/login_view_model.dart';
import 'package:nuevo/views/widgets/my_custom_text_form_field.dart';

import '../../styles/general_styles.dart';
void main() {
  runApp(Login());
}
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _HomeState();
}

class _HomeState extends State<Login> {

  LoginViewModel _LoginVM = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 30),
              child: const CircleAvatar(
                maxRadius: 120,
                minRadius: 50,
                backgroundColor: Colors.indigo,
                //child: Padding(padding: EdgeInsets.all(50)),
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPnpo6pVkLA1nGN6JXSlAzR6wBDghofcTfcQ&usqp=CAU'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: Text(
                'Bienvenido',
                style: styleTextTitle(context, 30),
              ),
            ),
            Form(
              child: Column(
                children: [
                  myCustomTextFormField(
                      controller: _LoginVM.getEmailController(),
                      hintText: 'Email',
                      onChanged: (value) {
                        setState(() {
                          _LoginVM.validateEmail();
                        });
                      }
                  ),
                  const SizedBox(height: 10,),
                  _LoginVM.getIsValidEmail() ? const SizedBox(height: 10,) : Text('error'),

                  const SizedBox(height: 10,),
                  myCustomTextFormField(
                      controller: _LoginVM.getPasswordController(),
                      hintText: 'Contraseña', obscureText: true,
                      onChanged: (value){
                        setState(() {
                          _LoginVM.validatePassword();

                        });
                      }
                  ),
                  _LoginVM.getIsValidPass() ? SizedBox(height: 10,) : Text('error'),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
