import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {
  const LabelButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: AppTextStyles.buttonHeading,
        ));
  }
}
