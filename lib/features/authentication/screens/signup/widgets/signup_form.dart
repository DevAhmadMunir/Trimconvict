import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/constants/text_strings.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user)
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
             Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user)
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        //------------UserName--------
        TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              //------------Email--------
        TextFormField(
                
                decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct)
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              //------------Phone-Number--------
        TextFormField(
                
                decoration: const InputDecoration(
                  labelText: TTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              //------------Password--------
        TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //--------Term and condition Check box-------------
              Row(
                children: [
                  SizedBox(width: 15, height: 10, child: Checkbox(value: true, onChanged: (value){})),
                  const SizedBox(height: TSizes.spaceBtwItems),
              
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(text: '${TTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: '${TTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark? TColors.white : TColors.primary,
                    )),
                    TextSpan(text: '${TTexts.and} ',
                    style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark? TColors.white : TColors.primary,
                    )),  
                  ]),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              //--------Sign-Up button--------
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(onPressed: () => Get.to(()=> const VerifyEmailScreen()), 
                child: const Text(TTexts.createAccount)),
                ),
      ],
    ),
            );
  }
}