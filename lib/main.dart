import 'package:fiq/questions/widgets/questions_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FIQApp());
}

class FIQApp extends StatelessWidget {
  const FIQApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'OpenSans',),
      home: const QuestionsScreen(),
    );
  }
}
