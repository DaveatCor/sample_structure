import 'package:flutter/material.dart';
import 'package:flutter_structure/login/body_login.dart';

/// This Class Work on Functional

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void validateEmail(String? email){
    print(email);
    setState(() {
      
    }); 
  }
  void validatePhoneNumber(String? phone){
    print(phone);
    setState(() {
      
    }); 
  }
  void validatePassword(String? pass){
    print(pass);
    setState(() {
      
    }); 
  }
  Future<void>? login(){
    print("Hello login");
    setState(() {
      
    }); 
    return null;
  }

  @override
  Widget build(BuildContext context) {
    /// When Parent SetState child will refresh UI too
    return LoginBody(
      validateEmail: validateEmail,
      validatePassword: validatePassword,
      validatePhoneNumber: validatePhoneNumber,
      login: login,
    );
  }
}