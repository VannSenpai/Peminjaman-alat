import 'package:get/get.dart';
import 'package:peminjaman_alat/controllers/profile_controller.dart';
import 'package:peminjaman_alat/providers/profile_provider.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileProvider());
    Get.lazyPut(() => ProfileController());
  }
}