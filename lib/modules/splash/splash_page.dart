import 'package:flutter/material.dart';
import 'package:pay_flow/shared/auth/auth_controller.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _imageList = [AppImages.union, AppImages.logoFull];
    final authController = AuthController();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 1));
      authController.checkAuth(context);
    });

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          for (var image in _imageList) Center(child: Image.asset(image))
        ],
      ),
    );
  }
}
