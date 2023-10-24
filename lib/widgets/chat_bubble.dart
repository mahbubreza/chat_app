import 'package:chat_app/modals/chat_message_entity.dart';
import 'package:flutter/material.dart';
class ChatBubble extends StatelessWidget {
  final Alignment alignment;
  final ChatMessageEntity entity;
  const ChatBubble({super.key, required this.alignment, required this.entity });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '${entity.text}',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            if(entity.imageUrl!=null)
              Image.asset("${entity.imageUrl}"),
          ],
        ),
        padding: EdgeInsets.all(24.0),
        margin: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0)
            )
        ),
      ),
    );
  }
}
