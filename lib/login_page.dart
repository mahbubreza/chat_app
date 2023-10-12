import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('button clicked');
          },
        ),
        body: Column(
          children: <Widget>[
            Text(
              "Let's Sign you in!",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            Text(
              "Welcome back! \n You\'ve been missed.",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Image.asset("assets/mahbub.jpg"),
            Container(
              height: 150,
              width: 150,
              child: FlutterLogo(),
              padding: EdgeInsets.all(30.0),
            ),
          ],
        ),
      ),
    );
  }
}