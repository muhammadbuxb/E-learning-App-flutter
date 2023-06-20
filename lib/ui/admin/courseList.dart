import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseListPage extends StatelessWidget {
  static String route = '/courselist';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(16),
          child:ListView(
            children: [
              SizedBox(
                width:Get.width*.80,
                height: Get.height*.10,
                child: Text('Avilable Courses'),
              ),
              
            ],
          )
          
        ),
      ),
    );
  }
}
