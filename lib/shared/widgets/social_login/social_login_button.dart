import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_sizing.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onTap,
      child: SizedBox(
        width: _screen.width * AppSizing.goldenPercentual,
        child: Row(
          children: [
            Image.asset(AppImages.google),
            Container(
              height: 56,
              color: AppColors.stroke,
              width: 1,
            ),
            Text(
              'Entrar com Google',
              style: AppTextStyles.buttonGray,
              textAlign: TextAlign.center,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.shape),
        overlayColor: MaterialStateProperty.all<Color>(AppColors.stroke),
      ),
    );
  }
}
