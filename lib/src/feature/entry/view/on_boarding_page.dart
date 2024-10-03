import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:go_router/go_router.dart";
import "package:udemy_clone/src/core/constants/context_extension.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";
import "package:udemy_clone/src/core/routes/app_route_name.dart";
import "../../../../riverpod.dart";
import "../../../core/widgets/text_widget.dart";

class OnBoardingPage extends ConsumerStatefulWidget {
  const OnBoardingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends ConsumerState<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    ref.watch(entryController);
    final controller = ref.read(entryController);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 25),

          SizedBox(
            height: 450,
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: controller.images.length,
              itemBuilder: (context, index) {
                return Page(image: controller.images[index], title: controller.titles[index], desc: controller.descriptions[index]);
              },
            ),
          ),
          const SizedBox(height: 25),

          Center(
            child: SmoothPageIndicator(
              controller: controller.pageController, // Use the same controller here
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: context.appTheme.secondary,
                dotColor: Colors.grey,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 8,
              ),
            ),
          ),


          Container(
            height: 75,
            width: double.infinity,
            color: context.appTheme.secondary,
            child: Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  height: double.infinity,
                  minWidth: MediaQuery.of(context).size.width / 2 - 10,
                  child: CustomTextWidget(
                    "Browse",
                    textColor: context.appTheme.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    context.go(AppRouteName.signInSocial);
                  },
                  height: double.infinity,
                  minWidth: MediaQuery.of(context).size.width / 2 - 10,
                  child: CustomTextWidget(
                    "Sign in",
                    textColor: context.appTheme.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
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

class Page extends StatelessWidget {
  const Page({super.key, required this.image, required this.title, required this.desc});

  final String image, title, desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 320,
              child: SvgPicture.asset(image)),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextWidget(title, fontSize: 24, textColor: context.appTheme.secondary, fontWeight: FontWeight.bold),
                CustomTextWidget(desc, fontSize: 20, textColor: context.appTheme.secondary, fontWeight: FontWeight.w400)
              ],
            ),
          )
        ],
      ),
    );
  }
}
