import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'global.dart';

class ChatBot extends StatefulWidget {
  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final TextEditingController messageController = TextEditingController();
  final ScrollController listviewController = ScrollController();
  String generatedText = '';

  generateText() {
    setState(() {
      chatData.add({
        "message": messageController.text,
        "sender": "user",
      });
    });

    messageController.text = '';

    String apiURL = 'https://api.openai.com/v1/completions';
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer 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'
    };
    Map<String, dynamic> body = {
      'model': "text-davinci-003",
      "prompt": messageController.text + " in less than 150 tokens",
      "max_tokens": 150,
      "temperature": 0.5,
      "top_p": 1
    };

    setState(() {
      generatedText = "Typing...";
    });

    http
        .post(apiURL, headers: headers, body: json.encode(body))
        .then((response) {
      setState(() {
        generatedText = json.decode(response.body)['choices'][0]['text'];
        chatData.add({
          "message": generatedText,
          "sender": "bot",
        });
      });
    });
  }

  customListTile(Map messageData) {
    var sender = messageData['sender'];
    var message = messageData['message'].trim();
    if (sender == "bot") {
      return ListTile(
        title: Text(message),
        leading: Icon(
          Icons.android_rounded,
          color: Colors.green[400],
        ),
      );
    } else {
      return ListTile(
        title: Text(
          message,
          textAlign: TextAlign.end,
        ),
        trailing: Icon(
          Icons.person_rounded,
          color: Colors.green[400],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text(
              'RECYCLEIT!',
              style: TextStyle(
                //
                color: Colors.brown,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontFamily: 'Century Schoolbook',
                fontSize: 20,
              ),
            ),
          ),
          Container(
            // margin: const EdgeInsets.all(20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/recycleicon.jpg'),
                radius: 40,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(10),
            child: Text(
              'Conversations',
              style: TextStyle(
                color: Colors.brown[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 20,
            thickness: 2,
            // indent: 5,
            // endIndent: 5,
          ),
          Expanded(
            child: ListView.separated(
              controller: listviewController,
              physics: BouncingScrollPhysics(),
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                return customListTile(chatData[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 10);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                        labelText: 'Ask a Question',
                        labelStyle: TextStyle(color: Colors.brown)),
                  ),
                ),
                IconButton(
                  onPressed: generateText,
                  icon: Icon(
                    Icons.send_rounded,
                    color: Colors.green[400],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
