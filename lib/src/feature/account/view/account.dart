import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy_clone/src/core/constants/context_extension.dart';
import 'package:udemy_clone/src/core/widgets/text_widget.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          "Account",
          textColor: context.appTheme.secondary,
        ),
      ),
      body:   Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AccountMainButton(title: "title", fontSize: 16,icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),
            AccountMainButton(title: "title", fontSize: 16,icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),
            AccountMainButton(title: "title", fontSize: 16,icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),
            AccountMainButton(title: "title", fontSize: 16,icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),
            AccountMainButton(title: "title", fontSize: 16,icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),
            AccountMainButton(title: "title", fontSize: 16,icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),
            AccountMainButton(title: "title", fontSize: 16,icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),
          ],
        ),
      ),
    );
  }
}

class AccountMainButton extends StatelessWidget {
  const AccountMainButton({super.key, this.onPressed, required this.title, this.fontSize = 16, this.icon});
  final VoidCallback? onPressed;
  final String title;
  final double? fontSize;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(onPressed: onPressed, child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            CustomTextWidget(title, fontSize: fontSize,textColor: context.appTheme.secondary,),
            const Spacer(),
            icon ?? const SizedBox.shrink()
          ],
        ),
      ),
    ));
  }
}
