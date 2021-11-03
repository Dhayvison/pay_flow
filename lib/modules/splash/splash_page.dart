import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _imageList = [AppImages.union, AppImages.logoFull];

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
