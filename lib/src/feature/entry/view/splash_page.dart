import "dart:async";
import "dart:developer";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:udemy_clone/src/core/constants/context_extension.dart";
import "package:udemy_clone/src/core/storage/app_storage.dart";
import "../../../core/routes/app_route_name.dart";

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String? enterUser;

  Future<bool?> isEnterUser() async {
    enterUser = await AppStorage.$read(key: StorageKey.enter);
    log("enterUser ==  $enterUser");
    if (enterUser != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  void navigateToNextPage() async {
    bool? isEntered = await isEnterUser();
    Timer(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          if (isEntered == true) {
            context.go(AppRouteName.featured);
          } else {
            context.go(AppRouteName.welcomePage);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 50),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 50),
            child: Image.asset("assets/images/udemy-logo.png", color: context.appTheme.secondary),
          ),
        ),
      ),
    );
  }
}
