import 'package:chat_app/modals/chat_message_entity.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ChatBubble extends StatelessWidget {
  final Alignment alignment;
  final ChatMessageEntity entity;
  const ChatBubble({super.key, required this.alignment, required this.entity });

  @override
  Widget build(BuildContext context) {

    bool isAuthor = entity.author.userName == context.read<AuthService>().getUserName();

    return Align(
      alignment: alignment,
      child: Container(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '${entity.text}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            if(entity.imageUrl!=null)
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(entity.imageUrl!)),
                    borderRadius: BorderRadius.circular(12)),
              ),
          ],
        ),
        padding: EdgeInsets.all(24.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: isAuthor? Theme.of(context).primaryColor: Colors.black87,
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
