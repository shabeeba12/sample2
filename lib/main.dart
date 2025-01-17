import 'package:flutter/material.dart';
import 'package:todo/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        title: 'Flutter Task App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:TaskScreen()
    );
  }
}
      
      