import 'package:chat_app/utils/spaces.dart';
import 'package:chat_app/widgets/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:social_media_buttons/social_media_buttons.dart';


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  void loginUser(context){
    /**/
    if(_formkey.currentState!=null && _formkey.currentState!.validate()){
      //print(userNameController.text);
      //print(userPasswordController.text);
      Navigator.pushNamed(context, '/chat', arguments: '${userNameController.text}');
      //print("Login Successful!");
    }else {
      print('not successful');
    }
  }

  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();

  final _mainUrl = "https://www.facebook.com/mahbubreza.choudhury/";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
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
              Expanded(child: Image.asset("assets/illustration.png",)),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    LoginTextField(
                      textHint: "Enter your Username",
                      validator: (value){
                        if(value!=null && value.isNotEmpty && value.length<5){
                          return "Your username should be more than 5 characters.";
                        }else if(value != null && value.isEmpty){
                          return "Please type your username.";
                        }
                        return null;
                      },
                      controller: userNameController,

                    ),
                    verticalSpacing(24),
                    LoginTextField(
                      //obscureText: true,
                      hasAsterics: true,
                      controller: userPasswordController,
                      textHint: "Enter your Password",
                    ),
                    verticalSpacing(24),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    loginUser(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                  )),
              GestureDetector(
                onTap: () async {
                  print("Link Clicked");
                  if (!await launchUrl(Uri.parse(_mainUrl))) {
                  throw Exception('Could not launch this!');
                  }
                },
                child: Column(
                  children: [
                    Text("find us on"),
                    Text(_mainUrl),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton.twitter(
                    url: "https://twitter.com/MahbubReza71527",
                    //size: 20,
                    color: Colors.blue,
                  ),
                  SocialMediaButton.facebook(
                    url: "https://www.facebook.com/mahbubreza.choudhury/",
                  ),
                ],
              )
            ],
          ),
        ),

    );
  }
}