import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  void loginUser(){
    /**/
    if(_formkey.currentState!=null && _formkey.currentState!.validate()){
      print(userNameController.text);
      print(userPasswordController.text);
      print("Login Successful!");
    }else {
      print('not successful');
    }
  }

  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Let's Sign you in!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                Text(
                  "Welcome back! \n You\'ve been missed.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Expanded(child: Image.asset("assets/spider.jpg",)),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value){
                          if(value!=null && value.isNotEmpty && value.length<5){
                            return "Your username should be more than 5 characters.";
                          }else if(value != null && value.isEmpty){
                            return "Please type your username.";
                          }
                          return null;
                        },
                        controller: userNameController,
                        decoration: InputDecoration(
                          hintText: 'Input Your Username',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: userPasswordController,
                        decoration: InputDecoration(
                          hintText: 'Input Your Password',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: loginUser,
                    child: Text(
                      'Click Me!',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ))
              ],
            ),
          ),
        ),

    );
  }
}