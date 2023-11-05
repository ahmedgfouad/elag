import 'package:elag/core/functions/navigator.dart';
import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:elag/core/widgets/custom_button.dart';
import 'package:elag/core/widgets/custom_text_form_field.dart';
import 'package:elag/features/new_patient_profile/views/common_injuies_regions_view.dart';
import 'package:flutter/material.dart';

class NewPatientProfileView extends StatelessWidget {
  const NewPatientProfileView({super.key});

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
              const Text(
                "New patient Profile",
                style: AppStyles.textStyle18,
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Text(
                "Enter your patient informations as it will be doumented in their profile",
                style:
                    AppStyles.textStyle14.copyWith(color: AppColors.greySearch),
              ),
              const SizedBox(height: 15),
              const Text(
                "Full Name",
                style: AppStyles.textStyle14,
              ),
              CustomTextFormField(
                hint: "",
                controller: TextEditingController(),
                validator: (v) {
                  return null;
                },
              ),
              const SizedBox(height: 10),
              const Text(
                "Age",
                style: AppStyles.textStyle14,
              ),
              CustomTextFormField(
                hint: "",
                controller: TextEditingController(),
                validator: (v) {
                  return null;
                },
              ),
              const SizedBox(height: 10),
              const Text(
                "Gender",
                style: AppStyles.textStyle14,
              ),
              CustomTextFormField(
                hint: "",
                controller: TextEditingController(),
                validator: (v) {
                  return null;
                },
              ),
              const SizedBox(height: 10),
              const Text(
                "Phone Number",
                style: AppStyles.textStyle14,
              ),
              CustomTextFormField(
                hint: "",
                controller: TextEditingController(),
                validator: (v) {
                  return null;
                },
              ),
              const SizedBox(height: 40),
              const Text(
                "Phone Number",
                style: AppStyles.textStyle14,
              ),
              const SizedBox(height: 10),
              Center(
                child: CustomButton(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 40,
                  borderRadius: 05,
                  backgroundColor: AppColors.beigeThired,
                  title: "Upload Files",
                  textStyle: AppStyles.textStyle16,
                  titleColor: AppColors.beigeSecond,
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                height: 40,
                borderRadius: 05,
                backgroundColor: AppColors.beigeSecond,
                title: "Add The Region Of Injury",
                textStyle: AppStyles.textStyle16,
                titleColor: AppColors.white,
                onPressed: () {
                  defaultNavigator(context, const CommonInjuriesRegionsView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
