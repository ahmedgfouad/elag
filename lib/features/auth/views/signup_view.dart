import 'package:elag/core/functions/navigator.dart';
import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:elag/core/widgets/custom_button.dart';
import 'package:elag/core/widgets/custom_text_form_field.dart';
import 'package:elag/features/auth/views/account_type_view.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Your Accoutn ",
                style: AppStyles.textStyle24.copyWith(color: AppColors.beige),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your personal informationto start using the app whether you are a patient or a doctor",
                style: AppStyles.textStyle12,
              ),
              const SizedBox(height: 50),
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
                "Email",
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
              CustomButton(
                width: MediaQuery.of(context).size.width,
                height: 40,
                borderRadius: 05,
                backgroundColor: AppColors.beigeThired,
                title: "Signup",
                textStyle: AppStyles.textStyle16,
                titleColor: AppColors.beigeSecond,
                onPressed: () {
                  defaultNavigator(context, const AccountTypeView());
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?  ",
                    style: AppStyles.textStyle14,
                  ),
                  Text(
                    "Login",
                    style: AppStyles.textStyle16
                        .copyWith(color: AppColors.beigeSecond),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Or continue with",
                  style: AppStyles.textStyle14,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 40,
                    borderRadius: 05,
                    backgroundColor: AppColors.beigeThired,
                    title: "Facebok",
                    textStyle: AppStyles.textStyle16,
                    titleColor: AppColors.beigeSecond,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  CustomButton(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 40,
                    borderRadius: 05,
                    backgroundColor: AppColors.beigeThired,
                    title: "Google",
                    textStyle: AppStyles.textStyle16,
                    titleColor: AppColors.beigeSecond,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
