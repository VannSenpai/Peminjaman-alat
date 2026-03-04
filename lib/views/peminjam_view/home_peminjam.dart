import 'package:flutter/material.dart';
import 'package:peminjaman_alat/controllers/auth_controller.dart';
import 'package:get/get.dart';

class HomePeminjam extends StatelessWidget {
  const HomePeminjam({super.key});

  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuthController>();
    return Scaffold(
      body: Center(child: Text('Peminjam')),
      floatingActionButton: FloatingActionButton(onPressed: (){
        authC.logout();
      }, child: Icon(Icons.logout),),
    );
  }
}