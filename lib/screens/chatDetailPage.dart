import 'package:flutter/material.dart';
import 'package:project/models/chatMessageModel.dart';
import "package:project/main.dart";

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent:
            "Hello! May I know what's your address so i can deliver\N the item to you",
        messageType: "receiver"),
    ChatMessage(
        messageContent: "Hi! It's 113 Somerset. Thank you!",
        messageType: "sender"),
    // ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    // ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    // ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
              ),
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
                // margin: const EdgeInsets.all(10),
                child: Text(
                  'Chat with others!',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.login_rounded,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutUsPage()));
                            },
                            // size: 20,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.mark_email_unread_outlined,
                          color: Colors.brown[400],
                          size: 40,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                // padding: EdgeInsets.only(top: 10, bottom: 10),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    // padding:
                    //     EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                      alignment: (messages[index].messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              (messages[index].messageType == "receiver"
                                  ? Icons.person_outline_outlined
                                  : Icons.person_outline),
                              color: Colors.green[400],
                            ),
                            SizedBox(width: 10),
                            Text(
                              messages[index].messageContent,
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Send message",
                            hintStyle: TextStyle(color: Colors.green[400]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_circle_up_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        backgroundColor: Colors.brown,
                        elevation: 0,
                      ),
                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}