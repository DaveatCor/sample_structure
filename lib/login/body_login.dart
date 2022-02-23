import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  
  final Function? validateEmail;
  final Function? validatePhoneNumber;
  final Function? validatePassword;
  final Function? login;
  
  const LoginBody({ Key? key, this.validateEmail, this.validatePhoneNumber,this.validatePassword, this.login}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("My app"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                validateEmail!("email");
              }, 
              child: Text("validateEmail")
            ),
            ElevatedButton(
              onPressed: (){
                validatePhoneNumber!("Phone");
              }, 
              child: Text("validatePhone")
            ),
            ElevatedButton(
              onPressed: (){
                validatePassword!("Pass");
              }, 
              child: Text("validatePassword")
            ),
            ElevatedButton(
              onPressed: () async {
                await login!();
              }, 
              child: Text("Login")
            )
          ],
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
