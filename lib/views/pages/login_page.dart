import 'package:flutter/material.dart';
import 'package:shop_01/utilities/routes.dart';
import 'package:shop_01/views/pages/register_page.dart';
import 'package:shop_01/views/widgets/main_button.dart';

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
                const SizedBox(height: 16,),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: Text('Forget your password?'),
                  ),
                ),
                const SizedBox(height: 16,),
                MainButton(
                    text: 'Login',
                    onTap: () {
                      print("Login");
                    }
                ),
                const SizedBox(height: 15,),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    child: const Text('Don\'t have an account? Register'),
                    onTap: () => Navigator.of(context).pushNamed(AppRoutes.registerPageRoute),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Text('or Login with',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.g_mobiledata)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.apple)),
                    ],
                  ),
                )

              ],
            ),
          )
      )
    );
  }
}