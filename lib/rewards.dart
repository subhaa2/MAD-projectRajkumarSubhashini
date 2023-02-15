import 'package:flutter/material.dart';
import 'main.dart';

class RewardsPage extends StatelessWidget {
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
                'View your rewards!',
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
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/plasticbottles.jpg'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Item that you've recycled",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '10',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.star),
                  onPressed: () {},
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Item that you've recycled",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '10',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.star),
                  onPressed: () {},
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Item that you've recycled",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '10',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.star),
                  onPressed: () {},
                  color: Colors.yellow,
                ),
              ],
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.qr_code_scanner_rounded,
                  size: 40,
                )
              ],
            ),
            Text(
              'Scan this qr code at shops mentioned, and claim these reward points. For example, you have 30 points, you will get 30% off.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height:8,),
            Text(
              'Shops where you can claim this discount: Sheng Shiong,Giant and Fairprice',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height:60,),
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
