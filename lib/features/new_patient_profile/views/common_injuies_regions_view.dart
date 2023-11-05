import 'package:elag/core/functions/navigator.dart';
import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:elag/core/widgets/custom_button.dart';
import 'package:elag/features/body_details/views/body_details_view.dart';
import 'package:elag/features/home/views/widgets/commo_injuries_widget.dart';
import 'package:flutter/material.dart';

class CommonInjuriesRegionsView extends StatelessWidget {
  const CommonInjuriesRegionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Common Injuies Regions",
                style: AppStyles.textStyle20
                    .copyWith(color: AppColors.beigeSecond),
              ),
              const SizedBox(height: 5),
              Text(
                "chose one of the following to see teh region anatiomey and possible injury mechanisms end teh tests to differeenitata",
                style: AppStyles.textStyle14.copyWith(
                  color: AppColors.beige,
                ),
              ),
              const SizedBox(height: 50),
              const CommonInjuriesWidget(),
              const SizedBox(height: 10),
              const CommonInjuriesWidget(),
              const SizedBox(height: 10),
              const CommonInjuriesWidget(),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Center(
                child: CustomButton(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 40,
                  borderRadius: 05,
                  backgroundColor: AppColors.beigeSecond,
                  title: "Select",
                  textStyle: AppStyles.textStyle16,
                  titleColor: AppColors.white,
                  onPressed: () {
                    defaultNavigator(context, const BodyDetailsView());
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
