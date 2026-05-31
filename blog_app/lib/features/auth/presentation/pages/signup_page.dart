import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Signup Page2"),
            AuthField(
              hintText: "Username",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 30),
            AuthField(
              hintText: "Email",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 30),
            AuthField(
              hintText: "Password",
              controller: TextEditingController(),
              isObscureText: true,
            ),
            const SizedBox(height: 15),
            AuthGradientButton(buttonText: 'Signup', onPressed: (){})
          ],
        ),
      )
    );
  }
}
