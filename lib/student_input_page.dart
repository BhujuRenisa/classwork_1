import 'package:classwork_1/output_page.dart';
import 'package:flutter/material.dart';

class StudentInputPage extends StatefulWidget {
  const StudentInputPage({super.key});

  @override
  State<StudentInputPage> createState() => _StudentInputPageState();
}

class _StudentInputPageState extends State<StudentInputPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  String gender = "Male";
  String department = "IT";

    final _space = SizedBox(height: 12,);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Details"),
      ),
      body: Padding(padding: EdgeInsets.all(8.0),
      child: Column( 
        children: [
          TextField(
            controller: firstNameController,
            decoration: InputDecoration(
              labelText: "First Name", 
              border: OutlineInputBorder(), 
            ),
          ),
          _space,

          TextField(
            controller: lastNameController,
            decoration: InputDecoration(
              labelText: "Last Name", 
              border: OutlineInputBorder(), 
            ),
          ), 
          _space,
          
          
          RadioListTile<String>(
            title: Text("Male"),
            value: "Male",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),
          _space,
          RadioListTile<String>(
            title: Text("Female"),
            value: "Female",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),

          _space, 

          DropdownButtonFormField(
            value: department,
            decoration: InputDecoration(
              labelText: "Departmnet", 
              border: OutlineInputBorder(),
            ),
            items: [
              DropdownMenuItem(value: "IT", child: Text("IT")), 
              DropdownMenuItem(value: "sells", child: Text("sells")),
              DropdownMenuItem(value: "Finance", child: Text("Finance")), 
            ],
            onChanged: (value){
              setState(() {
                department= value!; 
              });
            }
          ),

          _space, 
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OutputPage(
                      firstName: firstNameController.text, 
                      lastName: lastNameController.text,
                      gender: gender,
                      department: department, 
                    ),
                    ),
                );
              }, child: Text(" Display Details"),
              ),
            ),

        ]
      ))
    );
  }
}