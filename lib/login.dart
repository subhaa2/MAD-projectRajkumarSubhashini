import 'package:flutter/material.dart';
import 'package:project/bottomNav.dart';
import 'package:project/global.dart';
import 'register.dart';
import 'home.dart';
import 'profile.dart';

// class MyData{
//   final String user;
//   MyData(this.user);
// }

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String errorMessage;
  String errorMessage2;

  final bool _disableButton = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  handleClick(name) {
    print('$name clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.bold,
                  ),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  )),
                ),
              ),
            ),
            if (errorMessage2 != null)
              Text(
                errorMessage2,
                style: TextStyle(color: Colors.red),
              ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.bold,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            if (errorMessage != null)
              Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            Container(
              margin: const EdgeInsets.all(30),
              height: 50,
              width: 150,
              // padding:  EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                  var userData = user.getUserData();
                  print(userData[0]);
                  print(userData[1]);

                  if (userData[0] == emailController.text &&
                      userData[1] == passwordController.text) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ),
                    );
                  } else if (user.password != passwordController.text) {
                    setState(() {
                      errorMessage = 'Incorrect Password';
                    });
                  }

                  if (user.email != emailController.text) {
                    setState(() {
                      errorMessage2 = 'Incorrect username';
                    });
                  }
                },
              ),
            ),
            Text(
              "Don't have an account yet? Register here!",
              style: TextStyle(
                color: Colors.green[600],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              height: 50,
              width: 150,
              // padding:  EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
