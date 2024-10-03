
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTermsTextWidget extends StatelessWidget {
  const CustomTermsTextWidget({
    super.key,
    this.textColor = Colors.white,
    this.backgroundColor,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.textDecoration = TextDecoration.none,
    this.decorationThickness,
    this.textOverflow = TextOverflow.clip,
    this.maxLine,
    this.softWrap,
    this.wordSpacing,
    this.height = 1.25,
    this.letterSpacing,
    this.fontFamily,
    this.fontStyle = FontStyle.normal,
    this.onTermsPressed,
    this.onPrivacyPressed,
  });

  final VoidCallback? onTermsPressed;
  final VoidCallback? onPrivacyPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final double? decorationThickness;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final bool? softWrap;
  final double? wordSpacing;
  final double? height;
  final double? letterSpacing;
  final String? fontFamily;
  final FontStyle? fontStyle;

  TextStyle _baseTextStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: textColor,
        backgroundColor: backgroundColor,
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: textDecoration,
        decorationThickness: decorationThickness,
        wordSpacing: wordSpacing,
        height: height,
        letterSpacing: letterSpacing,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign!,
      text: TextSpan(
        text: "By using our service you are agreeing to our ",
        style: _baseTextStyle(context),
        children: [
          TextSpan(
            text: "Terms",
            style: _baseTextStyle(context).copyWith(
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTermsPressed,
          ),
          TextSpan(
            text: " and ",
            style: _baseTextStyle(context),
          ),
          TextSpan(
            text: "Privacy Statement",
            style: _baseTextStyle(context).copyWith(
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = onPrivacyPressed,
          ),
        ],
      ),
    );
  }
}