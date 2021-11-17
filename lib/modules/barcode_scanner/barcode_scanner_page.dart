import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';
import 'package:pay_flow/shared/widgets/botton_sheet/bottom_sheet_widget.dart';
import 'package:pay_flow/shared/widgets/double_button_group.dart/double_button_group.dart';
import 'package:pay_flow/shared/widgets/label_button/label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Text(
              "Escaneie o código de barras do boleto.",
              style: AppTextStyles.buttonBackground,
            ),
            centerTitle: true,
            leading: const BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                  child: Container(color: const Color.fromRGBO(0, 0, 0, 0.6))),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  )),
              Expanded(
                  child: Container(color: const Color.fromRGBO(0, 0, 0, 0.6))),
              SizedBox(
                height: 50,
                child: DoubleButtonGroup(
                  leftButton: LabelButton(
                    label: "Inserir código do boleto",
                    onPressed: () {},
                  ),
                  rightButton: LabelButton(
                    label: "Adicionar da galeria",
                    onPressed: () {},
                    style: AppTextStyles.buttonPrimary,
                  ),
                ),
              ),
            ],
          ),
          bottomSheet: const BottomSheetWidget(),
        ),
      ),
    );
  }
}
