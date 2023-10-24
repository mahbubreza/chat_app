import 'package:chat_app/modals/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});

  List<ChatMessageEntity> _messages = [
    ChatMessageEntity(
        author: Author(userName: 'mahbub'),
        createdAt: 2131231242,
        id: '1',
        text: 'First text'),
    ChatMessageEntity(
        author: Author(userName: 'mahbub'),
        createdAt: 2131231442,
        id: '1',
        text: 'Second text',
        imageUrl: 'assets/spider.jpg'),
    ChatMessageEntity(
      author: Author(userName: 'jane'),
      createdAt: 2131234242,
      id: '1',
      text: 'Third text',
    )
  ];

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
                itemCount: _messages.length,
                itemBuilder: (context, index){
                  return ChatBubble(
                    alignment: _messages[index].author.userName == 'mahbub'
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                      entity: _messages[index],
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
