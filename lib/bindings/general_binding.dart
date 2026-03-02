import 'package:get/get.dart';
import 'package:peminjaman_alat/controllers/auth_controller.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
  }
}