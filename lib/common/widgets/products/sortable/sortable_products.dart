import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/common/widgets/layouts/grid_layout.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //---------Drop-Down---------
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
          .map((option) => DropdownMenuItem(value: option, child: Text(option)))
          .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        //---------products--------
        TGridLayout(itemCount: 12, itemBuilder: (_, index) => const TProductCardVertical()),  
      ],
    );
  }
}