import 'package:udemy_clone/src/core/constants/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/text_widget.dart';
import '../pages/subject.dart';

class CodeUi extends StatelessWidget {
  const CodeUi({super.key, required this.model});

  final SubjectModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextWidget(
              model.lessonTitle ?? "No title",
              fontWeight: FontWeight.bold,
              textColor: context.appTheme.secondary,
              fontSize: 22,
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: model.codeImageUrl?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(model.codeImageUrl?[index].description ?? "no description"),
                      const SizedBox(height: 10),
                      Container(
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [Colors.deepPurple, Colors.deepPurpleAccent, Colors.purple, Colors.purpleAccent],
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(4),
                          height: 300,
                          width: 375,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(model.codeImageUrl?[index].image ?? "assets/images/x-image.png"), fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}