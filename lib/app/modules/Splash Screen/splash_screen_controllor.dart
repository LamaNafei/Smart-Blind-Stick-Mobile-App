import 'dart:async';
import '../../routes/app_pages.dart';
export 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Timer(
      const Duration(seconds: 5),
          () => Get.offNamed(Routes.routeSignIn),
    );
  }
}