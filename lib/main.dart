import 'package:flutter/material.dart';
import 'package:pay_flow/modules/login/login_page.dart';
import 'package:pay_flow/modules/splash/splash_page.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pay Flow',
      home: LoginPage(),
    );
  }
}
