import 'package:elag/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PosslibleInjuryDetailsView extends StatelessWidget {
  const PosslibleInjuryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ankle Region",
                  style: AppStyles.textStyle20,
                ),
                SizedBox(height: 20),
                Text(
                  "Note Ask the patentfor now he got his injury and show them the nest machamism so he can idenfl teh what happend for then ",
                  style: AppStyles.textStyle14,
                ),
                SizedBox(height: 20),
                Text(
                  "Injury Mechanisms",
                  style: AppStyles.textStyle18,
                ),
                InjuryMechanismsWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InjuryMechanismsWidget extends StatelessWidget {
  const InjuryMechanismsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: const Text(
                "1- inversion teh most common mechanism of injury",
                style: AppStyles.textStyle16,
              ),
            ),
            Image.asset(
              'assets/images/ankelgif.gif',
              width: 130,
            ),
          ],
        ),
        Image.asset(
          "assets/images/youtbe.jpg",
          width: 50,
        ),
      ],
    );
  }
}
