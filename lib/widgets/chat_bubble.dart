import 'package:flutter/material.dart';
class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;
  const ChatBubble({super.key, required this.message,required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              message,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Image.asset("assets/spider.jpg"),
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
