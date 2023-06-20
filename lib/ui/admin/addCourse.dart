import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCoursePage extends StatefulWidget {
  static String route = "/addCourse";
  const AddCoursePage({super.key});

  State<AddCoursePage> createState() => _AddCourse();
}

class _AddCourse extends State<AddCoursePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Course'), actions: []),
      body: Container(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(padding: const EdgeInsets.only(top: 30)),
            const SizedBox(height: 10),
            TextFormField(
                validator: (value) {},
                decoration: InputDecoration(labelText: "Course Title")),
            TextFormField(
                validator: (value) {},
                decoration: InputDecoration(labelText: "Course Details")),
            TextFormField(
                validator: (value) {},
                decoration: InputDecoration(labelText: "Course Duration")),
            TextFormField(
              validator: (Value) {
                if (Value!.contains("-") ||
                    Value.contains("/") && Value.length == 8) {
                  return null;
                }
                return "Date/Month/Year";
              },
              decoration: InputDecoration(
                labelText: "Last date of Apply",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Number of Seats"),
            ),
            TextFormField(
                validator: (value) {},
                decoration: InputDecoration(labelText: "Min Qualification")),
            TextFormField(
              decoration: InputDecoration(labelText: "Name of Instructor"),
            ),
            SizedBox( height: 20,),
            SizedBox(
              width: Get.width * .80,
              height: Get.height * .20,
              child:Column(children: [
                Text('Upload Poster of Course'),

              ]),
            ),
            const SizedBox(height: 10),
            FloatingActionButton.extended(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {

                }
              },
              label: Text("Submit"),
            ),
            
          ],
        ),
      )),
    );
  }
}
