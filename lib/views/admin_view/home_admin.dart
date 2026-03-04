import 'package:flutter/material.dart';
import 'package:peminjaman_alat/controllers/auth_controller.dart';
import 'package:get/get.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuthController>();
    return Scaffold(
      body: Center(child: Text('Admin')),
      floatingActionButton: FloatingActionButton(onPressed: (){
        authC.logout();
      }, child: Icon(Icons.logout),),
    );
  }
}