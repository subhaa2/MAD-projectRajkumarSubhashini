import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  // HomePage(String text, String pwd);

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  'Recycle your item!',
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/containers.png'),
                        width: 120,
                        height: 120,
                      ),
                    ],
                  )
                ],
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Add Description',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 70), // Adjust the vertical padding as needed
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 10,
                    ),
                  ),
                  alignLabelWithHint: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: OutlinedButton(
                      child: Text(
                        'Recycle',
                        style: TextStyle(
                          color: Colors.lightGreen[300],
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.green[400]),
                      ),
                      onPressed: null,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Clear the text in the TextField
                      _controller.clear();
                    },
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Colors.brown,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Recycle more items",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.add_box_outlined, color: Colors.brown[400]),
                  SizedBox(width: 10),
                ],
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
