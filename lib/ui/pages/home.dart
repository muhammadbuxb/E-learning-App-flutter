import 'package:elearning/controllers/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:elearning/resourses/themes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/newCourse.dart';
import '../views/myCourse.dart';
import '../views/signup.dart';

class HomePage extends StatefulWidget {
  static String route = '/home';
  const HomePage({super.key});
 @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  bool isDarkModeOn = false;
 String data = 'inital';
 

  late final AuthController _controller = Get.find();
  @override
  void dispose() {
    //close it here
    super.dispose();
  }
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
              Tab(text: "Courses"),
              Tab(text: "My Courses"),
              ],
            )
            ),
        
      
        body:TabBarView(
              children: [
                newCourseView(),
                MyCourseView(),
              ]),
            )           
    );      
  }    
  
}
