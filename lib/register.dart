import 'package:flutter/material.dart';
import 'global.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  String _validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  String _validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          key: _formKey,
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
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: _validateEmail,
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
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: _validatePassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
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
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: passwordConfirmationController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
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
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter a password confirmation';
                    }
                    if (value != passwordController.text) {
                      return 'Password confirmation does not match';
                    }
                    return null;
                  },
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
                    if (_formKey.currentState.validate()) {
                      user.email = emailController.text;
                      user.password = passwordController.text;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
