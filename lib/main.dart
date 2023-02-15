import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'login.dart';
import 'register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              // margin: const EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/recycleicon.jpg'),
                  radius: 50,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(10),
              child: Text(
                'Hello! Welcome to RECYCLEIT , where you can recycle your items ranging from clothes to food. With this app, we hope that you will learn more about recycling and enjoy the process of recycling and at the same time, reduce the amount of pollution being emitted. You can get rewards points to use them at other shops too while recycling your items too!',
                style: TextStyle(
                  color: Colors.lightGreen[600],
                  fontFamily: 'Century Schoolbook',
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(5),
              child: Text(
                '\n This company was formed with the idea of reducing the amount of pollution being emitted and letting people know why recycling is such a beneficial but enjoyable process at the same time.Theres currently a group of environmentalists, app developers, and a few Ui/UX designers maintaining on this app and looking for new ways on how to improve this app further',
                style: TextStyle(
                  color: Colors.lightGreen[600],
                  fontFamily: 'Century Schoolbook',
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () async {
                  var url = "tel:+65 9234 7120";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  'Contact us at +65 9234 7120 !',
                  style: TextStyle(
                    color: Colors.lightGreen[600],
                    fontFamily: 'Century Schoolbook',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/instagram.png'),
                    width: 60,
                    height: 60,
                  ),
                  Image(
                    image: AssetImage('images/facebook.png'),
                    width: 60,
                    height: 60,
                  ),
                  Image(
                    image: AssetImage('images/twitter.png'),
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () async {
                  String email =
                      "mailto:recycleit@gmail.com?subject=RecycleIt%20Inquiry&body=Dear%20RecycleIt%20team%2C%0A%0A";
                  if (await canLaunch(email)) {
                    await launch(email);
                  } else {
                    throw 'Could not launch $email';
                  }
                },
                child: Text(
                  'Email us recycleit@gmail.com !',
                  style: TextStyle(
                    color: Colors.lightGreen[600],
                    fontFamily: 'Century Schoolbook',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: OutlinedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.lightGreen[300],
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: Colors.green[400]),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: OutlinedButton(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.lightGreen[300],
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: Colors.green[400]),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
