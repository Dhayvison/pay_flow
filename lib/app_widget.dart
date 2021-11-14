import 'package:flutter/material.dart';
import 'package:pay_flow/app_routes.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      initialRoute: AppRoutes.splashPage,
      routes: AppRoutes.routes,
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
    );
  }
}
