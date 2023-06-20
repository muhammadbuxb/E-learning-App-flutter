import 'package:elearning/ui/pages/home.dart';
import 'package:elearning/ui/pages/week.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elearning/ui/pages/week.dart';

class CourseWeekPage extends StatefulWidget {
  static String route = '/week';
  const CourseWeekPage({super.key});

  @override
  State<CourseWeekPage> createState() => _CourseWeekPageState();
}

class _CourseWeekPageState extends State<CourseWeekPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E-Learning"), actions: []),
      body: Container(
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
                  "Flutter Development Course",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )),
          Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Align(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, WeekPage.route);
                  },
                  child: Text(
                    "Week 1 Introduction to Flutter",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                      color: Colors.black87,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              )),
          Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.amber.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Align(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Week 2 Introduction to Dart",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                      color: Colors.black87,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
