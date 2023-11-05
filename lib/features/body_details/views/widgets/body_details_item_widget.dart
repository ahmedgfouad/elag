import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BodyDetailsItemWidget extends StatelessWidget {
  final String image;
  final String type;
  final Function()? onTap;
  const BodyDetailsItemWidget({
    super.key,
    required this.image,
    required this.type,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.beigeThired,
        ),
        child: Row(children: [
          Container(
            width: 50,
            height: 50,
            color: AppColors.white,
            child: Image.asset(
              image,
              // width: 40,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            type,
            style: AppStyles.textStyle16.copyWith(color: AppColors.beigeSecond),
          ),
        ]),
      ),
    );
  }
}
