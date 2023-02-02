import 'package:flutter/material.dart';

import 'package:friendship/provider/auth_provider.dart';
import 'package:friendship/model/auth_model.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController EmailController = new  TextEditingController();
  final TextEditingController PasswordController = new  TextEditingController();
  final AuthProvider authProvider = new AuthProvider();

  final Auth auth = new Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('log in test'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: TextFormField(
                controller: EmailController,
                ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: TextFormField(
                controller: PasswordController,
                ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  auth.email = EmailController.text;
                  auth.password = PasswordController.text;
                  print("email: ${auth.email}");
                  print("password: ${auth.password}");
                  authProvider.login(auth);
                },
                child: Text("Log In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}