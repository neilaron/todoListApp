import 'package:flutter/material.dart';
import 'package:lab_work/screens/todo_screen.dart';

void main(){
  runApp(labwork());
}
class labwork extends StatelessWidget {
  labwork({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen());
  }
}