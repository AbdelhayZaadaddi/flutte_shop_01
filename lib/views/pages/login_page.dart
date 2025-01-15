import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(
              vertical: 42,
              horizontal: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Login',
                ),
                SizedBox(height: 64,),
                TextFormField(
                  controller: _emailController,
                  validator: (val) => val!.isEmpty ? 'Please enter your email!' : null,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _passwordController,
                  validator: (val) => val!.isEmpty? 'Please enter your password!' : null,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password'
                  ),
                ),
              ],
            ),
          )
      )
    );
  }
}