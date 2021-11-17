import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';
import 'package:pay_flow/shared/widgets/double_button_group.dart/double_button_group.dart';
import 'package:pay_flow/shared/widgets/label_button/label_button.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(color: const Color.fromRGBO(0, 0, 0, 0.6))),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Text(
                    "Não foi possível identificar o código de barras.",
                    style: AppTextStyles.buttonBoldHeading,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Tente escanear novamente ou digite o código do boleto.",
                    style: AppTextStyles.buttonHeading,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 56,
              child: DoubleButtonGroup(
                  leftButton:
                      LabelButton(label: "Digitar o código", onPressed: () {}),
                  rightButton: LabelButton(
                    label: "Escanear novamente",
                    onPressed: () {},
                    style: AppTextStyles.buttonPrimary,
                  )),
            ),
          ],
        )
      ],
    );
  }
}
