import 'dart:math';

import 'package:elearning/ui/pages/enrollCourse.dart';
import 'package:elearning/resourses/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class newCourseView extends StatelessWidget {
  newCourseView({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child: ListView(shrinkWrap: true, children: [
        GestureDetector(
  onTap: () =>{
    Get.toNamed(EnrollCoursePage.route, arguments: 'Ui / Ux Designing')
  },
  child:Card(color: Colors.grey.shade100,
            child: Padding(padding: const EdgeInsets.all(10),
                child: Column(
                  children:[
                  Image.asset(
                    "assets/testPrep.png",
                    width: MediaQuery.of(context).size.width * .90,
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                  Text(
                    "Ui / Ux Designing",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ]))),
        ),
        
         GestureDetector(
  onTap: () =>{
    Get.toNamed(EnrollCoursePage.route, arguments: 'Flutter Development')
  },
  child:Card(color: Colors.grey.shade100,
            child: Padding(padding: const EdgeInsets.all(10),
                child: Column(
                  children:[
                  Image.asset(
                    "assets/courseAssistance.png",
                    width: MediaQuery.of(context).size.width * .90,
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                  Text(
                    "Flutter Development",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ]))),
         ),
       
       ]),
    );
  }
}
