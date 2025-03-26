import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_sighup/form_divider.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/common/widgets/login_sighup/social_buttons.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //header
            TLoginHeader(),
            const TLoginForm(),
            //Divider
            const TFormDivider(dividerText : TTexts.orSignInWith),
            const SizedBox(height: TSizes.spaceBtwSections),
            //Footer
            const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}








