import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_online_learning_app/pageselector.dart';
=======
import 'package:flutter_online_learning_app/explorer%20tab/explorer.dart';
import 'package:flutter_online_learning_app/explorer%20tab/trial2.dart';
import 'package:flutter_online_learning_app/pageselector.dart';
import 'package:flutter_online_learning_app/trial.dart';
>>>>>>> f0b9327cc1a310439c49b801bacc6ccf8a59e17a
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff29274F),
      ),
<<<<<<< HEAD
      home: const pageselector(),
=======
      home: pageselector(),
>>>>>>> f0b9327cc1a310439c49b801bacc6ccf8a59e17a
    );
  }
}
