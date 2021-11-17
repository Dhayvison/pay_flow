import 'package:flutter/material.dart';
import 'package:pay_flow/shared/widgets/vertical_divider_widget/vertical_divider_widget.dart';

class DoubleButtonGroup extends StatelessWidget {
  const DoubleButtonGroup(
      {Key? key, required this.leftButton, required this.rightButton})
      : super(key: key);
  final Widget leftButton;
  final Widget rightButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: leftButton),
        const VerticalDividerWidget(),
        Expanded(child: rightButton)
      ],
    );
  }
}
