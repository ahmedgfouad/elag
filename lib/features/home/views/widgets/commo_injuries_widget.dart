import 'package:elag/core/utils/colors.dart';
import 'package:elag/features/home/views/widgets/image_of_body_part_and_name_widget.dart';
import 'package:flutter/material.dart';

class CommonInjuriesWidget extends StatelessWidget {
  const CommonInjuriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const ImageOfBodyPartAndName(
            width: 100,
            height: 100,
            bodyName: "Shourder",
            image: "assets/images/shoulder.png",
          ),
          Container(
            width: 2,
            height: 80,
            color: AppColors.beigeSecond,
          ),
          const ImageOfBodyPartAndName(
            width: 100,
            height: 100,
            bodyName: "knee",
            image: "assets/images/ankel.png",
          ),
        ],
      ),
    );
  }
}
