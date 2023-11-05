import 'package:elag/core/utils/colors.dart';
import 'package:elag/core/utils/styles.dart';
import 'package:elag/features/home/views/widgets/image_of_body_part_and_name_widget.dart';
import 'package:flutter/material.dart';

class PatientItemWidget extends StatelessWidget {
  const PatientItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.beigeThired,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.beige,
            child: Center(
              child: Icon(
                Icons.person,
                size: 40,
                color: AppColors.white,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Mohmed Ahmed",
                style: AppStyles.textStyle18
                    .copyWith(color: AppColors.beigeSecond),
              ),
              const Text(
                "Age :27",
                style: AppStyles.textStyle12,
              ),
              const Text(
                "gender : male",
                style: AppStyles.textStyle12,
              ),
              const Text(
                "Sposrt : Football",
                style: AppStyles.textStyle12,
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 2,
            height: 70,
            color: AppColors.beigeSecond,
          ),
          const Spacer(),
          const ImageOfBodyPartAndName(
            image: "assets/images/fav.jpg",
            bodyName: "Las",
          ),
        ],
      ),
    );
  }
}

