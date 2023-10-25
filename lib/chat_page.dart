import 'dart:convert';

import 'package:chat_app/modals/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatPage extends StatefulWidget {
   ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatMessageEntity> _messages = [];

  _loadInitialMessages() async{
    final response = await rootBundle.loadString("assets/mock_messages.json");
    final List<dynamic> decodeList = jsonDecode(response) as List;

    //print(decodeList);

    final List<ChatMessageEntity> _chatMessages = decodeList.map((listItem){
      return ChatMessageEntity.fromJson(listItem);
    }).toList();

    setState(() {
      _messages = _chatMessages;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _loadInitialMessages();
    super.initState();
  }

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
