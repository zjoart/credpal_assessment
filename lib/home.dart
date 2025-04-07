import 'package:credpal_assessment/colors.dart';
import 'package:credpal_assessment/text_styles.dart';
import 'package:credpal_assessment/widgets/product_card/model.dart';
import 'package:credpal_assessment/widgets/product_card/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 189,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              color: AppColors.colorD0DAFF,
              padding: const EdgeInsets.only(
                left: 20,
                right: 16,
                top: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pay later",
                          style: AppTextStyles.font28Weight900.copyWith(
                            color: AppColors.black1A1A1A,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "everywhere",
                              style: AppTextStyles.font28Weight900.copyWith(
                                color: AppColors.black1A1A1A,
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 16.62,
                              width: 17,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "!",
                                style: AppTextStyles.font12Weight700.copyWith(
                                  color: AppColors.colorF274FED,
                                  fontFamily:
                                      AppTextStyles.productSansFontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shopping limit: ₦0",
                        style: AppTextStyles.font12Weight500.copyWith(
                          color: AppColors.color20294A,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.colorF274FED,
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          "Activate Credit",
                          style: AppTextStyles.font13Weight700.copyWith(
                            color: AppColors.white,
                            fontFamily: AppTextStyles.axiformaFontFamily,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
          ),
          SliverToBoxAdapter(
            child: Container(
                color: AppColors.colorF1F3FE,
                height: 405,
                child: () {
                  const itemCount = 8;

                  return GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemCount,
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 17,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.95,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return ProductCard(
                          margin: EdgeInsets.only(
                            left: (index == 0) || (index == 1) ? 20 : 0,
                            right: (index == itemCount - 1) ||
                                    (index == itemCount - 2)
                                ? 20
                                : 0,
                          ),
                          model: const DefaultProductCardModel(
                            title: "iPhone XS Max 4GB     ",
                            imageUrl: "assets/pngs/image_1.png",
                            price: "₦ 295,999",
                            discount: "₦ 315,000",
                          ),
                        );
                      });
                }()),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item #$index'),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
