import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

import '../../controller/auth_controller.dart';
import '../style/style.dart';

class AuthButton extends StatelessWidget {
  final String text;
  const AuthButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 327.w,
      decoration: BoxDecoration(
          color: Style.primaryColor, borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: Text(
        text,
        style: Style.textStyleRegular2(textColor: Style.whiteColor),
      )),
    );
  }
}
