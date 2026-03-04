import 'package:get/get.dart';
import 'package:peminjaman_alat/views/admin_view/home_admin.dart';
import 'package:peminjaman_alat/views/general_view/register.dart';
import 'package:peminjaman_alat/views/peminjam_view/home_peminjam.dart';
import 'package:peminjaman_alat/views/petugas_view/home_petugas.dart';

class RoutePage {
  static final route = [
    GetPage(
      name: '/register',
      page: () => Register(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: '/Admin-view',
      page: () => HomeAdmin(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: '/Petugas-view',
      page: () => HomePetugas(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: '/Peminjam-view',
      page: () => HomePeminjam(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
  ];
}
