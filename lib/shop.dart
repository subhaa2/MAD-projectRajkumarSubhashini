import 'package:flutter/material.dart';
import 'main.dart';

class ShopPage extends StatelessWidget {
  // HomePage(String text, String pwd);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                'Get recycled items!',
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
            SizedBox(height:40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/plasticbottles.jpg'),
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "These clean plastic bottles can be used for many purposes!",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Posted by Owner324, 17h ago",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Claim!'),
                      textColor: Colors.black,
                      color: Colors.green[600],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/clothes.jpeg'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Baby/Toddler clothes that can be used again. Text me\n to know more details!",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Posted by Owner12, 1h ago",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Claim!'),
                      textColor: Colors.black,
                      color: Colors.green[600],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/nuttela.jpg'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Unopened nuttella spread jar! Can be stored in refridgerator\n for a few weeks.",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Posted by animallover, 2h ago",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Claim!'),
                      textColor: Colors.black,
                      color: Colors.green[600],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70),
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
    );
  }
}
