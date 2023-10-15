import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  void loginUser(){
    print(userNameController.text);
    print(userPasswordController.text);
    print("Login Successful!");
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
                TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    hintText: 'Input Your Username',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller: userPasswordController,
                  decoration: InputDecoration(
                    hintText: 'Input Your Password',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
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