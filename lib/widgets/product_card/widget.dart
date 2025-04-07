import 'package:credpal_assessment/colors.dart';
import 'package:credpal_assessment/text_styles.dart';
import 'package:credpal_assessment/widgets/product_card/model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.margin,
    required this.model,
  });

  final EdgeInsetsGeometry? margin;
  final ProductCardModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 161,
        width: 174,
        margin: margin,
        padding: const EdgeInsets.only(
          top: 5,
          left: 7,
          right: 24,
          bottom: 14,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Image.asset(
                    model.imageUrl,
                    height: 96,
                    width: 112,
                  ),
                ),
                Positioned(
                  right: 80,
                  top: 1,
                  bottom: 45,
                  left: 0,
                  child: Container(
                    // height: 50,
                    // width: 50,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7,
                    ),
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Pay\n",
                            style: AppTextStyles.font12Weight500.copyWith(
                              color: AppColors.colorB3B3CC,
                            ),
                          ),
                          TextSpan(
                            text: "40%",
                            style: AppTextStyles.font14Weight800.copyWith(
                              color: AppColors.colorF274FED,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              "Activate Credit",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font14Weight800.copyWith(
                color: AppColors.black1A1A1A,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model.price,
                  style: AppTextStyles.font14Weight800.copyWith(
                    color: AppColors.colorF274FED,
                  ),
                ),
                Text(
                  model.discount,
                  style: AppTextStyles.font12Weight500.copyWith(
                    color: AppColors.colorB3B3CC,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColors.colorB3B3CC,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
