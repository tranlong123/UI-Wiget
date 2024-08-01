import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/ui/screens/footer/sign_in_footer.dart';
import 'package:new_app/ui/styles/colors.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // ignore: unused_field, prefer_final_fields
  String _email = '';


  @override
  Widget build(BuildContext context) {
    // Đặt màu status bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));
final Map<String, String>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    // ignore: unused_local_variable
    final String? emailRegister = args?['emailRegister'] ;
    // ignore: unused_local_variable
    final String? pass = args?['pass'];
    return const SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // SignInHeader(email: _email),
              // SignInBody(
              //     onEmailChanged: _updateEmail,
              //     emailRegister: emailRegister,
              //     pass: pass),
              SignInFooter()
            ],
          ),
        ),
      ),
    );
  }
}
