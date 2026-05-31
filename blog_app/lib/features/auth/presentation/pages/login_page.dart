import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const LoginPage());
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("5 "),
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
              AuthGradientButton(buttonText: 'Login', onPressed: (){}),
          
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                  Navigator.push(context, SignUpPage.route());
                },
                child: RichText(
                  text: TextSpan(
                    text: 'I do\'not have an account? 5 ',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Signup",
                        style: const TextStyle(
                          color: Colors.blue,
                        ),
                        // recognizer: TapGestureRecognizer()..onTap = () {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                        // },
                      )
                    ])
                ),
              )
              
            ],
          ),
        ),
      )
    );
  }
}
