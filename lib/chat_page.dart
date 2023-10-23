import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi $userName!'),
        actions: [
          IconButton(onPressed: (){
            //print('button pressed!');
            Navigator.pop(context);
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return ChatBubble(
                      alignment: index%2==0?Alignment.centerLeft:Alignment.centerRight,
                      message: "First Message",
                  );
            }),
            /*child: ListView(
        ChatBubble(alignment: Alignment.centerRight, message: "Second  Message"),
                ChatBubble(alignment: Alignment.centerRight, message: "ThirdS Message"),

              ],
            ),*/
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
