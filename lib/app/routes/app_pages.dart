import 'package:application/app/modules/Enter%20Data%20Screen/enter_data_screen.dart';
import 'package:get/get.dart';
import '../modules/Sign in Screen/signin_screen.dart';
import '../modules/Splash Screen/splash_screen.dart';
export 'package:get/get.dart';

part './app_routes.dart';
//
// GetX Generator - fb.com/htngu.99
//

List<GetPage<dynamic>> appRoutes = <GetPage<dynamic>>[
  GetPage<SplashScreen>(
    name: Routes.routeSplash,
    page: () => const SplashScreen(),
  ),
  GetPage<SignInScreen>(
    name: Routes.routeSignIn,
    page: () => SignInScreen(),
  ),
  GetPage<EnterDataScreen>(
    name: Routes.routeEnterData,
    page: () => const EnterDataScreen(),
  ),
  ];