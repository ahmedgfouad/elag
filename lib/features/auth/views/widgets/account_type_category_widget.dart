import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AccountTypeCategoryWidget extends StatelessWidget {
  final String title;
  final String discription;
  final int value;
  const AccountTypeCategoryWidget({
    super.key,
    required this.title,
    required this.discription,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          decoration: BoxDecoration(
            color: AppColors.beigeThired,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.textStyle18
                        .copyWith(color: AppColors.beigeSecond),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    child: Text(
                      discription,
                      style: AppStyles.textStyle12,
                    ),
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/fav.jpg"),
              )
            ],
          ),
        ),
        Positioned(
            right: 10,
            top: 0,
            width: 15,
            height: 30,
            child: Radio(
              activeColor: AppColors.beigeSecond,
              value: value,
              groupValue: 0,
              onChanged: (void value) {},
            ))
      ],
    );
  }
}
