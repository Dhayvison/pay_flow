import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_flow/app_routes.dart';
import 'package:pay_flow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      _user = user;
      saveUser(user);
      Navigator.pushReplacementNamed(context, AppRoutes.homePage);
    } else {
      deleteUser();
      Navigator.pushReplacementNamed(context, AppRoutes.loginPage);
    }
  }

  Future<void> saveUser(UserModel user) async {
    final SharedPreferences prefs = await _prefs;

    await prefs.setString('user', user.toJson());
    return;
  }

  Future<void> deleteUser() async {
    final SharedPreferences prefs = await _prefs;

    await prefs.remove('user');
    return;
  }

  Future<void> checkAuth(BuildContext context) async {
    final SharedPreferences prefs = await _prefs;

    if (prefs.containsKey('user')) {
      final json = prefs.get('user') as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}
