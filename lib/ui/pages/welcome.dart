import 'dart:async';

import 'package:elearning/ui/admin/dashboard.dart';
import 'package:elearning/ui/auth/auth.dart';
import 'package:elearning/ui/pages/home.dart';
import 'package:elearning/resourses/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {

    Timer (const Duration (seconds: 3), () {
      Get.to(()=>AuthPage(), duration: const Duration (milliseconds: 900));
      }); 

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

          child: Hero(tag: 'logo',

              child: Image.asset(
                StringUtils.logo,
              width: Get.width*.3,
              height: Get.height*.3,

              ),
              
      )),
    );
  }
}
