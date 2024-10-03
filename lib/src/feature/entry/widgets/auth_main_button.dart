
import 'package:flutter/material.dart';
import 'package:udemy_clone/src/core/constants/context_extension.dart';

import '../../../core/widgets/text_widget.dart';

class MainAuthButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final Widget? icon;
  final double? height, width, fontSize;

  const MainAuthButton({
    super.key,
    this.onPressed,
    required this.title,
    this.icon,
    this.height = 60,
    this.width = double.infinity,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: MaterialButton(
        onPressed: onPressed,
        height: height,
        minWidth: width,
        color: context.appTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(
            color: context.appTheme.secondary,
          ),
        ),
        child: Center(
          child: Row(
            children: [
              const SizedBox(width: 5),
              icon ?? const SizedBox.shrink(),
              const Spacer(flex: 1),
              CustomTextWidget(
                title,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
              const Spacer(flex: 5),
            ],
          ),
        ),
      ),
    );
  }
}