import 'package:elearning/controllers/auth.dart';
import 'package:get/get.dart';


class AppBindings extends Bindings {
  @override
  void dependencies() {
   Get.put(AuthController());
  }
}
