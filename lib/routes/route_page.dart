import 'package:get/get.dart';
import 'package:peminjaman_alat/views/general_view/register.dart';

class RoutePage {
  static final route = [
    GetPage(
      name: '/register',
      page: () => Register(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
  ];
}
