import 'package:get/get.dart';

import 'package:movie_app_flutter/app/modules/detailmovie/bindings/detailmovie_binding.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detailmovie_view.dart';
import 'package:movie_app_flutter/app/modules/home/bindings/home_binding.dart';
import 'package:movie_app_flutter/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
  ];
}
