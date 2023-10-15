import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

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
