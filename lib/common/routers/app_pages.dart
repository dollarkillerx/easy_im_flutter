import 'package:easy_im/components/unknown_route.dart';
import 'package:easy_im/pages/sing/binding.dart';
import 'package:easy_im/pages/sing/index.dart';
import 'package:easy_im/pages/sing/pages/edit_fill_profile/binding.dart';
import 'package:easy_im/pages/sing/pages/edit_fill_profile/index.dart';
import 'package:easy_im/pages/sing/pages/sing_otp/binding.dart';
import 'package:easy_im/pages/sing/pages/sing_otp/index.dart';
import 'package:easy_im/pages/welcome/binding.dart';
import 'package:easy_im/pages/welcome/index.dart';
import 'package:get/get.dart';
import '../../pages/home/binding.dart';
import '../../pages/home/index.dart';
import 'app_routes.dart';

class AppPages {
  static const InitRoute = AppRoutes.Home;
  // static String InitRoute =
  //     AppRoutes.pathJoin([AppRoutes.Sing, AppRoutes.EditFillProfile]);

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

    // sing
    GetPage(
        name: AppRoutes.Sing,
        page: () => SingPage(),
        binding: SingPageBinding(),
        children: [
          GetPage(
            name: AppRoutes.SingOTP,
            page: () => SingOTPPage(),
            binding: SingOTPPageBinding(),
          ),
          GetPage(
            name: AppRoutes.EditFillProfile,
            page: () => SingEditFillProfilePage(),
            binding: SingEditFillProfilePageBinding(),
          ),
        ]),
  ];

  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => UnknownRoute(),
  );
}
