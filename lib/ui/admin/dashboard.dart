import 'package:elearning/ui/admin/addCourse.dart';
import 'package:elearning/ui/admin/courseList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  static String route = '/dashboard';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _AdminDashboardPage();
}

class _AdminDashboardPage extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("E-Learning"),
          actions: [],
        ),
        body: Padding(
          padding:const EdgeInsets.all(30) ,
        child:Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: ListView(shrinkWrap: true, 
          children: [
           Card(color: Colors.grey.shade200,
            child: Padding(padding: const EdgeInsets.all(20),
                child: Text(
                    "Admin Dashboard",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: GoogleFonts.averiaSerifLibre().fontFamily,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                )),
            SizedBox(height: 30),

            Wrap(
              crossAxisAlignment:WrapCrossAlignment.center,
              runSpacing: 20,
              spacing: 10,

              children:[
                  GestureDetector(
                    onTap: () => {
                      Get.toNamed(CourseListPage.route),
                    },
                    child:SizedBox(
                            width: 150,
                            height: 150,
                                  child:Card(
                                    color: Colors.amber,
                                    child:Padding(padding: const EdgeInsets.all(20),
                                    child:Column(
                                      children: [
                                        Icon(Icons.my_library_books_outlined,size: 60,color: Colors.white,),
                                        const SizedBox(height: 10),
                                        Text('Our Courses', 
                                        textAlign:TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          
                                        ),)
                                      ],
                                    ),
                                     ),
                                  )
                          )
                    ),
                  
                  GestureDetector(
                    onTap: () => {
                      Get.toNamed(AddCoursePage.route),
                    },
                    child:SizedBox(
                            width: 150,
                            height: 150,
                                  child:Card(
                                    color: Colors.amber,
                                    child:Padding(padding: const EdgeInsets.all(20),
                                    child:Column(
                                      children: [
                                        Icon(Icons.bookmark_add_outlined,size: 60,color: Colors.white,),
                                        const SizedBox(height: 10),
                                        Text('Add Course', 
                                        textAlign:TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          
                                        ),
                                        )
                                      ],
                                    ),
                                     ),
                                  )
                          )
                    ),
            
                  GestureDetector(
                    onTap: () => {},
                    child:SizedBox(
                            width: 150,
                            height: 150,
                                  child:Card(
                                    color: Colors.amber,
                                    child:Padding(padding: const EdgeInsets.all(20),
                                    child:Column(
                                      children: [
                                        Icon(Icons.groups_outlined,size: 60,color: Colors.white,),
                                        const SizedBox(height: 10),
                                        Text('Students', 
                                        textAlign:TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          
                                        ),)
                                      ],
                                    ),
                                     ),
                                  )
                          )
                    ),
                  
                  GestureDetector(
                    onTap: () => {},
                    child:SizedBox(
                            width: 150,
                            height: 150,
                                  child:Card(
                                    color: Colors.amber,
                                    child:Padding(padding: const EdgeInsets.all(20),
                                    child:Column(
                                      children: [
                                        Icon(Icons.collections_bookmark_outlined,size: 60,color: Colors.white,),
                                        const SizedBox(height: 10),
                                        Text('Admission', 
                                        textAlign:TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          
                                        ),
                                        )
                                      ],
                                    ),
                                     ),
                                  )
                          )
                    ),
             ]),
            SizedBox(
              width: Get.width*.100,
              height:Get.height*.30,
              child:Padding(padding: EdgeInsets.only(top: 20),

              child: Image.asset(
                    "assets/testPrep.png",
                    width: MediaQuery.of(context).size.width * .100,
                    height: MediaQuery.of(context).size.height * .25,
                  ),
            )
              ),
            ]),
        )));
  }
}
