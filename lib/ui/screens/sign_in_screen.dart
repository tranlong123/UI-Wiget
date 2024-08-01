import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/ui/screens/body/sign_in_body.dart';
import 'package:new_app/ui/styles/colors.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // ignore: unused_field
  String _email = '';

  void _updateEmail(String email) {
    setState(() {
      _email = email;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Đặt màu status bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));
final Map<String, String>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    final String? emailRegister = args?['emailRegister'] ;
    final String? pass = args?['pass'];
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // SignInHeader(email: _email),
              SignInBody(
                  onEmailChanged: _updateEmail,
                  emailRegister: emailRegister,
                  pass: pass),
              // const SignInFooter()
            ],
          ),
        ),
      ),
    );
  }
}
