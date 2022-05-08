import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(35.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(Icons.mail),
        hintText: "Emailmu apa gess?",
        labelText: "Email *",
      ),
    );
  }

  Widget passwordField() {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          icon: Icon(Icons.password),
          labelText: "Enter Password",
          hintText: "This is your password ahaha",
        ),
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Color.fromARGB(255, 89, 168, 232),
      child: Text('Submit bang!'),
      onPressed: () {},
    );
  }
}
