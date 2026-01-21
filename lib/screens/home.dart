import 'package:fashion/components/custom_appbar.dart';
import 'package:fashion/core/colors.dart';
import 'package:fashion/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppbar(isBlackk: true),
      body: Stack(
        children: [
          /// texts
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/10.svg"),
          ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/October.svg"),
          ),
          Positioned(
            top: 85,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/Collection.svg"),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Gap(120),
                      Image.asset("assets/cover/cover1.png"),
                      Gap(20),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.50,
                          mainAxisSpacing: 0,
                        ),
                        itemBuilder: (context, index) {
                          final item = ProductModel.products[index];
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
