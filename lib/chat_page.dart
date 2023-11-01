import 'dart:convert';
import 'package:chat_app/modals/image_model.dart';
import 'package:chat_app/repo/image_repository.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:http/http.dart' as http;
import 'package:chat_app/modals/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

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

  onMessageSent(ChatMessageEntity entity){
    _messages.add(entity);
    setState(() {

    });
  }

  final ImageRepository _imageRepo = ImageRepository();

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hi $userName!'),
        actions: [
          IconButton(onPressed: (){
            //print('button pressed!');
            context.read<AuthService>().logoutUser();
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
                    alignment: _messages[index].author.userName == context.read<AuthService>().getUserName()
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
          ChatInput(onSubmit: onMessageSent,),
        ],
      ),
    );
  }
}
