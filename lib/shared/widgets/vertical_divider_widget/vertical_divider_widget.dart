import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

class VerticalDividerWidget extends StatelessWidget {
  final double height;
  const VerticalDividerWidget({Key? key, this.height = double.maxFinite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      color: AppColors.stroke,
    );
  }
}
