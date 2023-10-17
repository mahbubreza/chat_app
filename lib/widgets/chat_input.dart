import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  ChatInput({super.key});

  final chatMessageController = TextEditingController();

  void onSetButtonPressed(){
    print('chat message: ${chatMessageController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(onPressed: (){},
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
              hintText: "Type your password",
              hintStyle: TextStyle(color: Colors.blueGrey),
              border: InputBorder.none,
            ),
          )),
          IconButton(onPressed: (){},
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
