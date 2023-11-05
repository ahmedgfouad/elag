import 'package:elag/core/functions/navigator.dart';
import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:elag/core/widgets/custom_button.dart';
import 'package:elag/features/auth/views/widgets/account_type_category_widget.dart';
import 'package:elag/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

class AccountTypeView extends StatelessWidget {
  const AccountTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.transparent,
          // elevation: 0,
          ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Account Type",
              style:
                  AppStyles.textStyle24.copyWith(color: AppColors.beigeSecond),
            ),
            const SizedBox(height: 10),
            const Text(
              "chose whether you are a physiotherapist or a sports patient or a sports patient ",
              style: AppStyles.textStyle14,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const AccountTypeCategoryWidget(
              title: "Physiotherapist",
              discription:
                  "Hellow yourset if the iteatment process with toolw that make your get your tools that make you get your patient to thir potimume  ",
              value: 0,
            ),
            const SizedBox(height: 20),
            const AccountTypeCategoryWidget(
              title: "Sports Patient",
              discription:
                  "follow up with your own physitherapis and keep up the spiert",
              value: 1,
            ),
            const SizedBox(height: 40),
            const Text(
              '''
Note: You con't change the account type 
once you've mad it
''',
              style: AppStyles.textStyle14,
              textAlign: TextAlign.center,
            ),
            // const SizedBox(height: 20),
            CustomButton(
              width: MediaQuery.of(context).size.width,
              height: 40,
              borderRadius: 05,
              backgroundColor: AppColors.beigeThired,
              title: "Next",
              textStyle: AppStyles.textStyle16,
              titleColor: AppColors.beigeSecond,
              onPressed: () {
                defaultNavigator(context, const HomeView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
