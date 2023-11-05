import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnatomyDetailsView extends StatelessWidget {
  const AnatomyDetailsView({super.key});

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
                "Ankel Region Anatomy",
                style: AppStyles.textStyle20
                    .copyWith(color: AppColors.beigeSecond),
              ),
              const SizedBox(height: 40),
              Text(
                "Bones",
                style: AppStyles.textStyle18.copyWith(color: AppColors.beige),
              ),
              const SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    print("object");
                    showDialog(
                        context: context,
                        builder: (context) => const DialogWidget());
                  },
                  child: Image.asset(
                    "assets/images/ankel.png",
                    width: 150,
                  ),
                ),
              ),
              Text(
                "Ankel Region Anatomy",
                style: AppStyles.textStyle20
                    .copyWith(color: AppColors.beigeSecond),
              ),
              const SizedBox(height: 40),
              Text(
                "Ligaments",
                style: AppStyles.textStyle18.copyWith(color: AppColors.beige),
              ),
              const SizedBox(height: 20),
              Center(
                  child: Image.asset(
                "assets/images/ankel.png",
                width: 150,
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Row(
        children: [
          const SizedBox(
            width: 130,
            child: Text(
              "Middle taiar Articular scuface of calcenuns",
              style: AppStyles.textStyle16,
            ),
          ),
          Image.asset(
            "assets/images/ankel.png",
            width: 80,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ],
    );
  }
}
