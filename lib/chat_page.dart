import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi Mahbub!'),
        actions: [
          IconButton(onPressed: (){
            print('button pressed!');
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Hi, this is your message! ',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Image.asset("assets/mahbub.jpg"),
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
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Hi, this is your message! ',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Image.asset("assets/mahbub.jpg"),
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
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Hi, this is your message! ',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Image.asset("assets/mahbub.jpg"),
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
          Container(
            height: 100,
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
