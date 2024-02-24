import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/success_screen/success_screen.dart';
import 'package:trim_convict/features/authentication/screens/login/login.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/constants/text_strings.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //padding to give default space on all sides of screens
        child: Padding(
          padding: const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              //-----------Images-----------
              Image(image: const AssetImage(TImage.deliveredEmailIllustration), width: THelperFunctions.screenHeight() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwItems),

              //-----------Title & Sub Title-----------
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('Support@TrimConvict.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              //-------------Buttons------------
              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                  image: TImage.staticSuccessIllustration,
                  title: TTexts.yourAccountCreatedTitle,
                  subTitle: TTexts.yourAccountCreatedSubTitle,
                  onPressed: () => Get.to(() => const LoginScreen()),
                ),), 
              child: const Text(TTexts.tContinue))),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, 
              child: const Text(TTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}

class TImages {
}