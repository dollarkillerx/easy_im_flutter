import 'package:easy_im/components/unknown_route.dart';
import 'package:easy_im/pages/welcome/binding.dart';
import 'package:easy_im/pages/welcome/index.dart';
import 'package:get/get.dart';
import '../../pages/home/binding.dart';
import '../../pages/home/index.dart';
import 'app_routes.dart';

class AppPages {
  static const InitRoute = AppRoutes.Welcome;

  static final routers = [
    // 主页导航
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),

    // welcome
    GetPage(
      name: AppRoutes.Welcome,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
  ];

  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => UnknownRoute(),
  );
}
