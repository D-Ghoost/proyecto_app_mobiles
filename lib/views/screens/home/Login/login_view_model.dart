import 'package:flutter/cupertino.dart';

class LoginViewModel {
  TextEditingController _emailController = TextEditingController();
  bool _isValidEmail = true;
  TextEditingController _passwordController = TextEditingController();
  bool _isValidPass = true;

  TextEditingController getEmailController() => _emailController;
  TextEditingController getPasswordController() => _passwordController;
  bool getIsValidEmail() => _isValidEmail;
  bool getIsValidPass() => _isValidPass;
  validateEmail(){
    final email = _emailController.text;
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}');
    _isValidEmail = emailRegex.hasMatch(email);
  }
  validatePassword(){
    final password= _passwordController.text;
    final passRegex= RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$');
    print(passRegex.hasMatch(password));
    _isValidPass = passRegex.hasMatch(password);
  }
  ValidProfile(){

  }

}