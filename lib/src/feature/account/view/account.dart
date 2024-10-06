import 'package:flutter/material.dart';
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
      body: Column(),
    );
  }
}
