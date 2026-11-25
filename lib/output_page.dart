import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? department;

  OutputPage({
    required this.firstName, 
    required this.lastName, 
    required this.gender, 
    required this.department, 
  });

final _space = SizedBox(height: 12); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Output Page"),
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(8.0),
      child: Column(
        children: [
          Text("First Name: $firstName"), 
          _space,
          Text("Last Name: $lastName"), 
          _space,
          Text("gender: $gender"), 
          _space,
          Text("Department: $department"),           
        ],
      ),
      ),
    );
  }
}