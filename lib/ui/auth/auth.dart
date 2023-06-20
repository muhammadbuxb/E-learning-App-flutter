import 'package:elearning/controllers/auth.dart';
import 'package:elearning/database/user.dart';
import 'package:elearning/resourses/strings.dart';
import 'package:elearning/ui/views/login.dart';
import 'package:elearning/ui/views/signup.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elearning/ui/auth/auth.dart';

class AuthPage extends StatefulWidget {
  static String route = '/auth';
  const AuthPage({super.key});
  
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  Rx<UserModel> userModel = UserModel().obs;
   final AuthController _controller = Get.find();
  final List<Widget> authViews = [LoginView(), SignUpView()];
  @override
  Widget build(BuildContext context) {
  
   
    return Scaffold(
      body: Container(
          
          alignment: Alignment.center,
          child: ListView(
            shrinkWrap: true,
            children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  StringUtils.logo,
                  width: Get.width * .2,
                  height: Get.height * .2,
                ),
              ),
            Obx(
              () => _controller.authViews[_controller.selectedIndex.value],
            )
            ],
          )),
    );
  }
}
