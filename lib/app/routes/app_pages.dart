import 'package:get/get.dart';

import 'package:movie_app_flutter/app/modules/base/bindings/base_binding.dart';
import 'package:movie_app_flutter/app/modules/base/views/base_view.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/bindings/detailmovie_binding.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detailmovie_view.dart';
import 'package:movie_app_flutter/app/modules/home/bindings/home_binding.dart';
import 'package:movie_app_flutter/app/modules/home/views/home_view.dart';
import 'package:movie_app_flutter/app/modules/notification/bindings/notification_binding.dart';
import 'package:movie_app_flutter/app/modules/notification/views/notification_view.dart';
import 'package:movie_app_flutter/app/modules/profile/bindings/profile_binding.dart';
import 'package:movie_app_flutter/app/modules/profile/views/profile_view.dart';
import 'package:movie_app_flutter/app/modules/ticket/bindings/ticket_binding.dart';
import 'package:movie_app_flutter/app/modules/ticket/views/ticket_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BASE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAILMOVIE,
      page: () => DetailmovieView(),
      binding: DetailmovieBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.TICKET,
      page: () => TicketView(),
      binding: TicketBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.BASE,
      page: () => BaseView(),
      binding: BaseBinding(),
    ),
  ];
}
