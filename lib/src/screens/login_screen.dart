import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(35.0),
      child: Form(
        key: formKey,
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
      validator: validateEmail,
      onSaved: (value) {
        email = value!;
      },
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
        validator: validatePassword,
        onSaved: (value) {
          password = value!;
        },
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Color.fromARGB(255, 89, 168, 232),
      child: Text('Submit bang!'),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          print('Time to post $email and $password to my API');
        }
      },
    );
  }
}
