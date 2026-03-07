// import 'dart:async';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:peminjaman_alat/controllers/auth_controller.dart';
import 'package:peminjaman_alat/models/user_model.dart';
import 'package:peminjaman_alat/providers/profile_provider.dart';

class ProfileController extends GetxController {
  final currentUser = Rx<UserModel?>(null);
  final isLoading = false.obs;
  final authC = Get.find<AuthController>();
  String get userId => authC.user.value!.uid;
  final _provider = Get.find<ProfileProvider>();

  @override
  void onInit() {
    getCurrentUser(userId);
    super.onInit();
  }

  void getCurrentUser(String id) {
    try {
      isLoading.value = true;

      _provider.getUser(id).listen((event) {
        if (event.exists && event.data() != null) {
          final data = event.data() as Map<String, dynamic>;

          final dataUSer = UserModel(
            nama: data['nama'] ?? 'Guest',
            email: data['email'] ?? 'guest@gmail.com',
            role: data['role'] ?? 'Peminjam',
            profile: data['profile'] ?? '',
          );

          currentUser.value = dataUSer;
        }
        isLoading.value = false;
      });
    } catch (error) {
      isLoading.value = false;
      Get.snackbar('Error mengambil profile', '$error');
    }
  }
}
