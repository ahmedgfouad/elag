import 'package:elag/core/functions/navigator.dart';
import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:elag/core/widgets/custom_button.dart';
import 'package:elag/features/home/views/widgets/commo_injuries_widget.dart';
import 'package:elag/features/home/views/widgets/patient_item_widget.dart';
import 'package:elag/features/new_patient_profile/views/new_patient_profile_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hellow Doctor Mohamed",
                  style: AppStyles.textStyle18
                      .copyWith(color: AppColors.beigeSecond),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Your Patients",
                  style: AppStyles.textStyle16,
                ),
                const SizedBox(height: 5),
                const PatientItemWidget(),
                const SizedBox(height: 10),
                const PatientItemWidget(),
                const SizedBox(height: 10),
                Center(
                  child: CustomButton(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 40,
                    borderRadius: 05,
                    backgroundColor: AppColors.beige,
                    title: "Add New Patient Profile",
                    textStyle: AppStyles.textStyle16,
                    titleColor: AppColors.white,
                    onPressed: () {
                      defaultNavigator(context, const NewPatientProfileView());
                    },
                  ),
              ),
                const SizedBox(height: 10),
                const Divider(
                  color: AppColors.beigeSecond,
                  thickness: .5,
                  endIndent: 30,
                  indent: 30,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Commmon Lnjuies Regions",
                  style: AppStyles.textStyle18,
                ),
                const CommonInjuriesWidget(),
                const SizedBox(height: 10),
                const CommonInjuriesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
