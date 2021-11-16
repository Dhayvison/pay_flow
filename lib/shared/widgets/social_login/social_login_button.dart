import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_sizing.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';
import 'package:pay_flow/shared/widgets/vertical_divider_widget/vertical_divider_widget.dart';

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
            const VerticalDividerWidget(
              height: 56,
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
