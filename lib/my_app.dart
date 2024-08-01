import 'package:flutter/material.dart';
import 'package:new_app/ui/screens/sign_in_screen.dart';
import 'package:new_app/ui/styles/dimensions.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return const SafeArea(
        child: Scaffold(
            body: Center(
      child: SignInScreen()
      ),
    ));
  }
}
