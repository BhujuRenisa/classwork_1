import 'package:flutter/material.dart';
import 'package:classwork_1/student_input_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentInputPage(),
    );
  }
}