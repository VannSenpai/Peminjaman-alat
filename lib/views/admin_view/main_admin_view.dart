import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peminjaman_alat/controllers/auth_controller.dart';
import 'package:peminjaman_alat/controllers/main_admin_view_controller.dart';
import 'package:peminjaman_alat/utils/app_colors.dart';
import 'package:peminjaman_alat/views/admin_view/home_admin.dart';

class MainAdminView extends  GetView<MainAdminViewController>{
  final Widget? child;
  const MainAdminView({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuthController>();
    return DefaultTabController(
      length: controller.tabs.length,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
        title: Text(
          'Admin Dashboard',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: AppColors.textPrimary
          ),
        ),
        titleSpacing: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {},
                  child: authC.user.value?.photoURL != null ? CircleAvatar(
                    radius: 16,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(authC.user.value!.photoURL!),
                    ) : CircleAvatar(
                      backgroundColor: AppColors.textSecondary,
                      child: Icon(Icons.person, size: 45,),
                    ),
                ),
              ],
            ),
          )
        ],
      ),
        drawer: Drawer(
        child: ListView(
          padding: EdgeInsetsGeometry.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primary
              ),
              accountName: Text(
                authC.user.value?.displayName ?? 'Guest@gmail.com', style: TextStyle(
                  fontFamily: 'Inter'
                ),
              ),
              accountEmail: Text(authC.user.value?.email ?? 'Guest', style: TextStyle(
                fontFamily: 'Inter'
              ),),
              currentAccountPicture: authC.user.value?.photoURL != null ? CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(authC.user.value!.photoURL!),
              ) : CircleAvatar(
                backgroundColor: AppColors.textSecondary,
                child: Icon(Icons.person, size: 45,),
              ),
            ),
          ],
        ),
      ),
        body: TabBarView(children: [
          HomeAdmin(),
        ]),
        bottomNavigationBar: SafeArea(child: Container(
          decoration: BoxDecoration(
            color: AppColors.background
          ),
          child: TabBar(
            indicatorWeight: 5,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.primary,
            labelColor: AppColors.primary,
            tabs: controller.tabs,
            ),
        )),
      ),
    );
  }
}