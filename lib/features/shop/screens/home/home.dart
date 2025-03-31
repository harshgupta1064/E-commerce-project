import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/image_text/vertical_image_text.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //Search bar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        //Categories
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
