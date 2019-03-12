import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return Provider(
      child: MaterialApp(
        title: 'Log Me In',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login'),
          ),
          body: LoginScreen(),
        ),
      ),
    );
  }
}