import 'package:credpal_assessment/colors.dart';
import 'package:credpal_assessment/text_styles.dart';
import 'package:flutter/material.dart';

class MerchantCard extends StatelessWidget {
  const MerchantCard({
    super.key,
    required this.model,
  });

  final ({String image, String text}) model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            model.image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          model.text,
          style: AppTextStyles.font12Weight500
              .copyWith(color: AppColors.black1A1A1A),
        )
      ],
    );
  }
}
