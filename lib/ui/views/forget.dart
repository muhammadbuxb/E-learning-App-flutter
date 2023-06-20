import 'package:elearning/controllers/auth.dart';
import 'package:elearning/database/user.dart';
import 'package:elearning/ui/pages/home.dart';
import 'package:elearning/resourses/strings.dart';
import 'package:elearning/ui/views/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassView extends StatefulWidget {
  ForgetPassView({super.key});

  @override
  State<ForgetPassView> createState() => _ForgetPassViewPage();
}

class _ForgetPassViewPage extends State<ForgetPassView> {
  final _formKey = GlobalKey<FormState>();
  final UserModel userModel = UserModel();
  final _controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      // height: Get.height * .9,
      padding: const EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(padding: const EdgeInsets.only(top: 10)),
              const SizedBox(height: 20),
              TextFormField(
                validator: (Value) {
                  if (Value!.contains("@") &&
                      Value.contains(".") &&
                      Value.length >= 5) {
                    return null;
                  }
                  return "Invalid Email Type";
                },
                onChanged: (value) => _controller.userModel.value.email = value,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              const SizedBox(height: 25),
              FloatingActionButton.extended(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _controller.resetPassword();
                  }
                },
                label: Text(
                  "Send Mail",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () async {
                  AuthController auth = Get.find();
                  auth.changeView(0);
                },
                child:Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text.rich(TextSpan(
                      text: "Back to ",
                      style: TextStyle(fontSize: 16),
                      children: [
                        TextSpan(
                          text: "  Login ",
                          style: TextStyle(
                              color:Colors.amber,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )
                      ])),
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
