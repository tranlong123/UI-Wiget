import 'package:flutter/material.dart';
import 'package:new_app/ui/styles/dimensions.dart';
import 'package:new_app/ui/widget/custom_button.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Column(
        children: [
          const SizedBox(height: 22),
          CustomButton(
            width: AppDimensions.btAuthWidth,
            height: AppDimensions.btAuthHeight,
            enabled: true,
            // ignore: avoid_print
            onTap: () => print('hello'),
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: AppDimensions.customFontSize,
              color: Colors.white,
            ),
            child: const Text('Sign In'),
          ),
          const SizedBox(height: 22),
          CustomButton(
            width: AppDimensions.btAuthWidth,
            height: AppDimensions.btAuthHeight,
            onTap: () => Navigator.pushNamed(context, '/signUp'),
            enabled: false,
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: AppDimensions.customFontSize,
              color: Colors.white,
            ),
            child: const Text('Sign Up'),
          ),
        ],
      ),
    )));
  }
}
