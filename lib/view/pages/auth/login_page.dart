import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reflex/view/style/style.dart';

import '../../components/auth_button.dart';
import '../../components/custom_textfromfiled.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController password;
  late TextEditingController login;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    password = TextEditingController();
    login = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    password.dispose();
    login.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
          style: Style.textStyleRegular(size: 24, textColor: Style.whiteColor),
        ),
        backgroundColor: Style.primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: CustomTextFrom(
              validator: (s) {
                if (s?.isEmpty ?? true) {
                  return "Iltimos login kiriting";
                }
                return null;
              },
              controller: login,
              hintext: '',
              label: 'Login',
              isObscure: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: CustomTextFrom(
              controller: password,
              hintext: '',
              label: 'Parol',
              isObscure: true,
              validator: (s) {
                if (s?.isEmpty ?? true) {
                  return "Iltimos parol kiriting";
                }
                return null;
              },
            ),
          ),
          32.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: GestureDetector(
                onTap: () {
                  if (formKey.currentState?.validate() ?? false) {}
                },
                child: const AuthButton(text: 'Kirish')),
          ),
        ],
      ),
    );
  }
}
