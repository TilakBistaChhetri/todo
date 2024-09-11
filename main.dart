import 'package:flutter/material.dart';
import 'package:projectapp/Pages/homepage.dart';
void main() {
  runApp(TodoApp(

  )
  );
}


class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}