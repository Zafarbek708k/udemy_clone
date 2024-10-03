import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy_clone/src/core/constants/context_extension.dart';
import 'package:udemy_clone/src/core/routes/app_route_name.dart';
import 'package:udemy_clone/src/core/widgets/text_widget.dart';

import '../widgets/auth_main_button.dart';
import '../widgets/custom_terms_text_widget.dart';

class SignInSocial extends StatefulWidget {
  const SignInSocial({super.key});

  @override
  State<SignInSocial> createState() => _SignInSocialState();
}

class _SignInSocialState extends State<SignInSocial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              CustomTextWidget(
                "Sign in with Social account",
                textColor: context.appTheme.secondary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 10),

              CustomTermsTextWidget(
                textColor: context.appTheme.secondary,
                fontSize: 16,
                onTermsPressed: () {},
                onPrivacyPressed: () {}
              ),


              const Spacer(flex: 1),
              MainAuthButton(
                title: "Sign in with Email",
                onPressed: () {
                  context.push(AppRouteName.signInEmail);
                },
                icon: Icon(
                  Icons.email_outlined,
                  color: context.appTheme.secondary,
                  size: 40,
                ),
              ),
              MainAuthButton(
                title: "Sign in with Google",
                onPressed: () {},
                icon: Icon(
                  Icons.g_mobiledata_outlined,
                  color: context.appTheme.secondary,
                  size: 40,
                ),
              ),
              MainAuthButton(
                title: "Sign in with Facebook",
                onPressed: () {},
                icon: Icon(
                  Icons.facebook,
                  color: context.appTheme.secondary,
                  size: 40,
                ),
              ),
              MainAuthButton(
                title: "Sign in with Apple",
                onPressed: () {},
                icon: Icon(
                  Icons.apple,
                  color: context.appTheme.secondary,
                  size: 40,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomTextWidget(
                    "New here?",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: const StadiumBorder(),
                    child: const CustomTextWidget(
                      "Create an Account",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}


