import 'package:flutter/material.dart';
import 'models/chatMessageModel.dart';
import 'main.dart';
import 'models/chatUsersModel.dart';
import 'widgets/conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "images/userImage1.jpg",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "Hey! Where can i collect the recycled item?",
        imageURL: "images/userImage2.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Do you know what items we can recycle?",
        imageURL: "images/userImage3.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "I will reach out in awhile!",
        imageURL: "images/userImage4.jpg",
        time: "28 Mar"),
  ];
  List<ChatUsers> searchResults = [];

  String searchQuery = '';

  void _performSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        searchResults.clear();
      });
      return;
    }

    final results = chatUsers.where((user) {
      final name = user.name.toLowerCase();
      return name.contains(query.toLowerCase());
    }).toList();

    setState(() {
      searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
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
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Conversations",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[400]),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green[200],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.green[400],
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                    _performSearch(value);
                  });
                },
              ),
            ),
            ListView.builder(
              itemCount: searchQuery.isEmpty ? chatUsers.length : searchResults.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final user = searchQuery.isEmpty ? chatUsers[index] : searchResults[index];
                return ConversationList(
                  name: user.name,
                  messageText: user.messageText,
                  imageUrl: user.imageURL,
                  time: user.time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
