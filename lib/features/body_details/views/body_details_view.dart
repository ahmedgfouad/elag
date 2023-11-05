import 'package:elag/core/functions/navigator.dart';
import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:elag/core/widgets/custom_button.dart';
import 'package:elag/features/body_details/views/anatomy_details_view.dart';
import 'package:elag/features/body_details/views/posslible_details_view.dart';
import 'package:elag/features/body_details/views/widgets/body_details_item_widget.dart';
import 'package:flutter/material.dart';

class BodyDetailsView extends StatelessWidget {
  const BodyDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ankle Region",
                style: AppStyles.textStyle20
                    .copyWith(color: AppColors.beigeSecond),
              ),
              const SizedBox(height: 30),
              const Text(
                "Note : you con't change the acount type once you've made it.",
                style: AppStyles.textStyle16,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Center(
                child: Image.asset(
                  "assets/images/ankel.png",
                  width: 120,
                ),
              ),
              BodyDetailsItemWidget(
                image: 'assets/images/ankel.png',
                type: "Anatomy",
                onTap: () {
                  defaultNavigator(context, const AnatomyDetailsView());
                },
              ),
              const SizedBox(height: 14),
              BodyDetailsItemWidget(
                image: 'assets/images/ankel.png',
                type: "posslible injury mechanisms",
                onTap: () {
                  defaultNavigator(context, const PosslibleInjuryDetailsView());
                },
              ),
              const SizedBox(height: 14),
              const BodyDetailsItemWidget(
                image: 'assets/images/ankel.png',
                type: "tests",
              ),
              const SizedBox(height: 14),
              Center(
                child: CustomButton(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 40,
                  borderRadius: 05,
                  backgroundColor: AppColors.beigeSecond,
                  title: "Next",
                  textStyle: AppStyles.textStyle16,
                  titleColor: AppColors.white,
                  onPressed: () {
                    // defaultNavigator(context, const AccountTypeView());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
