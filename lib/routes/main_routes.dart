import 'package:elearning/ui/admin/addCourse.dart';
import 'package:elearning/ui/admin/courseList.dart';
import 'package:elearning/ui/admin/dashboard.dart';
import 'package:elearning/ui/auth/auth.dart';
import 'package:elearning/ui/pages/courseWeek.dart';
import 'package:elearning/ui/pages/enrollCourse.dart';
import 'package:elearning/ui/pages/home.dart';
import 'package:elearning/ui/pages/welcome.dart';
import 'package:elearning/ui/views/forget.dart';
import 'package:flutter/cupertino.dart';
import 'package:elearning/ui/pages/welcome.dart';
import 'package:elearning/ui/pages/week.dart';



class MainRoutes {
  Map<String,Widget Function(BuildContext)> Routes = {
    
    '/':(context) =>WelcomePage(),
    AuthPage.route:(context)=>AuthPage(),
    HomePage.route:(context) =>HomePage(),
    WeekPage.route:(context) =>WeekPage(),
    CourseWeekPage.route:(context)=>CourseWeekPage(),
    EnrollCoursePage.route:(context)=>EnrollCoursePage(),
    DashboardPage.route :(context) => DashboardPage(),
    AddCoursePage.route:(p0) => AddCoursePage(),
    CourseListPage.route:(p0) => CourseListPage(),

    

  };
}
