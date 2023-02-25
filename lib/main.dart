import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reflex/view/pages/auth/login_page.dart';
import 'package:reflex/view/pages/home/home_page.dart';

import 'controller/auth_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiProvider(
            providers: [
               ChangeNotifierProvider(create: (_) => AuthController()),
            ],
            child: MaterialApp(
              theme: ThemeData(
                useMaterial3: true,
              ),
              home:  LoginPage(),
            ),
          );
        });
  }
}
