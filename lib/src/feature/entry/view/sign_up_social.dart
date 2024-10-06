import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:udemy_clone/src/core/constants/context_extension.dart';
import 'package:udemy_clone/src/feature/entry/widgets/auth_main_button.dart';

import '../../../core/routes/app_route_name.dart';
import '../../../core/widgets/text_widget.dart';
import '../widgets/custom_terms_text_widget.dart';

class SignUpSocial extends StatefulWidget {
  const SignUpSocial({super.key});

  @override
  State<SignUpSocial> createState() => _SignUpSocialState();
}

class _SignUpSocialState extends State<SignUpSocial> {
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
                "Sign Up with Social account",
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

              const Spacer(
                flex: 1,
              ),
              MainAuthButton(
                title: "Sign in with Email",
                onPressed: () {
                  context.push(AppRouteName.signUpEmail);
                },
                icon: Icon(
                  Icons.email_outlined,
                  color: context.appTheme.secondary,
                  size: 40,
                ),
              ),
              MainAuthButton(
                title: "Sign in with Google",
                onPressed: () {
                  context.go(AppRouteName.featured);
                },
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
              const SizedBox(height: 20),

              Row(
                children: [
                  
                ],
              ),

              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomTextWidget(
                    "Have an account?",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  MaterialButton(
                    onPressed: () {
                      context.push(AppRouteName.signInSocial);
                    },
                    shape: const StadiumBorder(),
                    child: const CustomTextWidget(
                      "Sign In",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
