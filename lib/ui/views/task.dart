import 'dart:math';

import 'package:elearning/ui/pages/courseWeek.dart';
import 'package:elearning/resourses/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskView extends StatelessWidget {
  TaskView({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child: ListView(shrinkWrap: true, children: [
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Align(
              child: Text(
                "Week Task",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )),
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Align(
              child:TextButton(
              onPressed: () {
                
               },
              child: Text(
                "Asigned Task",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ),
            )),
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.amber.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Align(
              child:TextButton(
              onPressed: () {
                
               },
              child: Text(
                "Submit Task",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ),
            )),
      ]),
    );
  }
}
