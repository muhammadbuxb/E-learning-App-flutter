import 'package:elearning/controllers/bindings.dart';
import 'package:elearning/routes/main_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:elearning/resourses/themes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-Learning',
      theme: AppThemes().lightTheme,
      transitionDuration: const Duration (seconds:1),
      defaultTransition: Transition.downToUp,
      routes: MainRoutes().Routes,
      initialBinding: AppBindings(),
    );
  }
}
