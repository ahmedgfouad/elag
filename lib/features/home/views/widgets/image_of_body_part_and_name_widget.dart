import 'package:elag/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ImageOfBodyPartAndName extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final String bodyName;
  const ImageOfBodyPartAndName({
    super.key,
    this.width = 50,
    this.height = 50,
    required this.image,
    required this.bodyName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: width,
          height: height,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          bodyName,
          style: AppStyles.textStyle12,
        ),
      ],
    );
  }
}
