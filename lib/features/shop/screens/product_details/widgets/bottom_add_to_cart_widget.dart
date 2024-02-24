import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/common/widgets/icons/t_circular_icon.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.dafaultSpace, vertical: TSizes.dafaultSpace /2),
      decoration: BoxDecoration(
        color: dark? TColors.darkGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(TSizes.cardRadiusLg),
          topLeft: Radius.circular(TSizes.cardRadiusLg),
        ) 
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),

              const SizedBox(width: TSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: TSizes.spaceBtwItems),

              const TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.black,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black),
            ),
            child: const Text('Add to Bag'),
          ),
        ],
      ),
    );
  }
}