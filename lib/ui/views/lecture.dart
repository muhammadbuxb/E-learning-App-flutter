import 'package:elearning/ui/pages/courseWeek.dart';
import 'package:elearning/resourses/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LectureView extends StatelessWidget {
  LectureView({super.key});
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
                "Lecture of Week 1 ",
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
              color: Colors.amber.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Align(
              child: Text(
                "Introduction to Flutter",
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
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Align(
              child: Text(
                "Flutter is a free and open-source mobile UI framework created by Google and released in May 2017. In a few words, this allows you to create a native mobile application with only one code. It means that you can use one programming language and one codebase to create two different apps (IOS and Android).",
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
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
            "assets/video.png",
            width: MediaQuery.of(context).size.width * .70,
            height: MediaQuery.of(context).size.height * .25,
          ),
            ),
      ]),
    );
  }
}
