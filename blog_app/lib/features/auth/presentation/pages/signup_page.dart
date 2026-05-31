import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // formKey.currentState?.validate();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("5 "),
              AuthField(
                hintText: "Name",
                controller: nameController,
              ),
              const SizedBox(height: 30),
              AuthField(
                hintText: "Email",
                controller: emailController,
              ),
              const SizedBox(height: 30),
              AuthField(
                hintText: "Password",
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(height: 15),
              AuthGradientButton(buttonText: 'Signup', onPressed: (){}),
          
              RichText(
                text: TextSpan(
                  text: 'I\'am have an account? ',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                      // recognizer: TapGestureRecognizer()..onTap = () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                      // },
                    )
                  ])
              )
              
            ],
          ),
        ),
      )
    );
  }
}
