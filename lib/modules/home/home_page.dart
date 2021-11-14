import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(TextSpan(
                  text: "Olá, ",
                  style: AppTextStyles.titleRegular,
                  children: [
                    TextSpan(
                        text: 'Dhayvison',
                        style: AppTextStyles.titleBoldBackground)
                  ])),
              subtitle: Text(
                "Mantenha seus pagamentos em dia",
                style: AppTextStyles.captionBoldShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: AppColors.shape,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: AppColors.primary,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.description, color: AppColors.body),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 58,
        height: 58,
        child: ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.add_box_outlined, color: AppColors.shape),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
