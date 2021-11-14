import 'package:flutter/material.dart';
import 'package:pay_flow/modules/login/login_controller.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_sizing.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';
import 'package:pay_flow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: _screen.height * AppSizing.goldenPercentualComplement,
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                        colors: [AppColors.shape, AppColors.primary])),
              ),
              Center(
                child: Stack(
                  children: [
                    Image.asset(
                      AppImages.person,
                      height:
                          _screen.height * AppSizing.goldenPercentualComplement,
                    ),
                    Positioned(
                      child: LinearBottomGradient(screen: _screen),
                      bottom: -1,
                    )
                  ],
                ),
                heightFactor: AppSizing.goldenRatioComplement,
              ),
            ],
          ),
          Image.asset(AppImages.logomini),
          SizedBox(
            width: _screen.width * AppSizing.goldenPercentual,
            child: Text(
              'Organize seus boletos em um só lugar',
              style: AppTextStyles.titleBoldHeading,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 32, bottom: 32),
            child: SocialLoginButton(
              onTap: () => {controller.googleSingIn(context)},
            ),
          )
        ],
      ),
    );
  }
}

class LinearBottomGradient extends StatelessWidget {
  const LinearBottomGradient({
    Key? key,
    required Size screen,
  })  : _screen = screen,
        super(key: key);

  final Size _screen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _screen.width,
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          AppColors.background,
          const Color(0x00FFFFFF),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      )),
    );
  }
}
