import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screem.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: Scaffold(body: LoginScreem()));
  }
}
