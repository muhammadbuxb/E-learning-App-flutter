import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:elearning/resourses/themes.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/lecture.dart';
import '../views/newCourse.dart';
import '../views/myCourse.dart';
import '../views/signup.dart';
import '../views/task.dart';

class WeekPage extends StatefulWidget {
  static String route = '/weekpage';
  const WeekPage({super.key});
 @override
  State<WeekPage> createState() => _WeekPageState();
}


class _WeekPageState extends State<WeekPage> {
  bool isDarkModeOn = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 2,
    child:Scaffold(
          appBar: AppBar(
          title: Text("E-Learning"),
          actions: [],
          
            bottom:TabBar(
            labelColor: Colors.white,
            labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.fanwoodText().fontFamily,
              ),

            indicatorColor: Colors.white,
            indicatorWeight:3,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.normal,
              fontFamily: GoogleFonts.fanwoodText().fontFamily,
            ),
          
            tabs: [
              Tab(text: "Lecture"),
              Tab(text: "Task"),
              ],
            )
            ),
        
      
        body: TabBarView(
              children: [
                LectureView(),
                TaskView(),
              ]),
            )           
    );      
  }    
  
}
