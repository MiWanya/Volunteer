import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Login.dart';
import 'UsersProvider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdminsProvider(),
      child: MaterialApp(
        title: 'Вход',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      )
    );
  }
}

