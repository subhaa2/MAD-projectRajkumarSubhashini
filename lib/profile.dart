import 'package:flutter/material.dart';
import 'global.dart';

import 'main.dart';

class ProfilePage extends StatefulWidget {
  final String email;
  final String password;

  ProfilePage({this.email, this.password});
  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  GlobalKey<FormState> _key = new GlobalKey();
  String validatePassword(String value) {
    String patttern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Password is Required";
    } else if (value.length < 6) {
      return "Password must have a minimum of 6 characters";
    } else if (!regExp.hasMatch(value)) {
      return "Minimum eight characters, at least one letter and one number";
    }
    return null;
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  bool _validate = false;

  String email, password;
  // _sendToServer() {
  //   if (_key.currentState.validate()) {
  //     // No any error in validation
  //     _key.currentState.save();

  //     final email = emailController.text;
  //     final password = passwordController.text;

  //     user.email = email;
  //     user.password = password;
  //     // Navigator.push(
  //     //   context,
  //     //   MaterialPageRoute(
  //     //     builder: (context) => ProfilePage(),
  //     //   ),
  //     // );
  //   } else {
  //     // validation error
  //     setState(() {
  //       _validate = true;
  //     });
  //   }
  // }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  get colorCustom => null;
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
                'Profile',
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

            SizedBox(
              height: 60,
            ),
            Form(
              key: _key,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: emailController,
                      validator: validateEmail,
                      decoration: InputDecoration(
                        hintText: user.email,
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
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                        controller: passwordController,
                        validator: validatePassword,
                        decoration: InputDecoration(
                          hintText: user.password,
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
                        autovalidate: _validate,
                        onSaved: (String val) {
                          password = val;
                        }),
                  ),
                  RaisedButton(
                    onPressed: () => _sendToServer(),
                    textColor: Colors.black,
                    color: Colors.green[400],
                    child: Text('Save changes'),
                  ),
                ],
              ),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: <Widget>[
            //     Text(
            //       widget.username,
            //       style: TextStyle(
            //         color: Colors.green[300],
            //         fontSize: 20,
            //       ),
            //     ),
            //     RaisedButton(
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => UpdateProfile()));
            //       },
            //       child: Text('Edit'),
            //       textColor: Colors.black,
            //       color: Colors.green[600],
            //     ),
            //   ],
            // ),
            SizedBox(height: 130),
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

// where did u refrence this from urhhhh from fathirs code...
  _sendToServer() {
    print("A");
    print(_key.currentState.validate());
    if (_key.currentState.validate()) {
      // No any error in validation
      print("Ac");

      _key.currentState.save();
      print("Ad");

      final email = emailController.text;
      final password = passwordController.text;

      user.email = email;
      user.password = password;
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ProfilePage(),
      //   ),
      // );
    } else {
      // validation error
      print("Az");

      setState(() {
        _validate = true;
      });
    }
  }
}
