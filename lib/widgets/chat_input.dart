import 'package:chat_app/modals/chat_message_entity.dart';
import 'package:chat_app/widgets/picker_body.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {

  final Function(ChatMessageEntity) onSubmit;

  ChatInput({super.key, required this.onSubmit});

  final chatMessageController = TextEditingController();

  void onSetButtonPressed(){
    print('chat message: ${chatMessageController.text}');

    final newChatMessage = ChatMessageEntity(
        text: chatMessageController.text,
        id: '1234',
        createdAt: DateTime.now().millisecondsSinceEpoch,
        author: Author(userName: 'mahbub')
    );
    onSubmit(newChatMessage);
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: (){
                showModalBottomSheet(
                    context: context, 
                    builder: (BuildContext build){
                      return NetworkImagePickerBody();
                });
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )
          ),
          Expanded(child: TextField(
            controller: chatMessageController,
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            minLines: 1,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Type your message",
              hintStyle: TextStyle(color: Colors.blueGrey),
              border: InputBorder.none,
            ),
          )),
          IconButton(onPressed: onSetButtonPressed,
              icon: Icon(
                Icons.send,
                color: Colors.white,
              )
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
          )
      ),
    );
  }
}
