import 'package:elearning/ui/pages/home.dart';
import 'package:elearning/ui/pages/week.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elearning/ui/pages/week.dart';

import '../../resourses/strings.dart';

class EnrollCoursePage extends StatefulWidget {
  static String route = '/enrollCourse';

  const EnrollCoursePage({super.key});

  @override
  State<EnrollCoursePage> createState() => _EnrollCourseWeekState();
}

class _EnrollCourseWeekState extends State<EnrollCoursePage> {
  final _formKey = GlobalKey<FormState>();
  // var data = ModalRoute.of(context)?.settings.arguments;
  var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E-Learning"), actions: []),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: ListView(shrinkWrap: true, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 30)),
                    Align(
                      child: Text(
                        "Apply for Course $data",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                        validator: (value) {},
                        decoration: InputDecoration(labelText: "First Name")),
                    TextFormField(
                        validator: (value) {},
                        decoration: InputDecoration(labelText: "Last Name")),
                    TextFormField(
                        validator: (value) {},
                        decoration: InputDecoration(labelText: "Father Name")),
                    TextFormField(
                      validator: (Value) {
                        if (Value!.contains("@") &&
                            Value.contains(".") &&
                            Value.length >= 5) {
                          return null;
                        }
                        return "Invalid Email Type";
                      },
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Phone"),
                    ),
                    TextFormField(
                        validator: (value) {},
                        decoration:
                            InputDecoration(labelText: "Qualification")),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Password"),
                    ),
                    const SizedBox(height: 40),
                    FloatingActionButton.extended(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {}
                      },
                      label: Text("Apply "),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
