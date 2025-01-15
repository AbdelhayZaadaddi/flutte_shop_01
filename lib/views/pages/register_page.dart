import 'package:flutter/material.dart';
import 'package:shop_01/utilities/routes.dart';
import 'package:shop_01/views/widgets/main_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                IconButton(onPressed: () => Navigator.of(context).pushNamed(AppRoutes.landingPageRoute), icon: Icon(Icons.arrow_back)),
                const Text('Register'),
                SizedBox(height: 64,),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'User Name',
                      hintText: 'Enter your UserName'
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email'
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                ),
                const SizedBox(height: 20,),
                MainButton(text: 'Login', onTap: () {}),
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    child: const Text('You already have an account? Login'),
                    onTap: () => Navigator.of(context).pushNamed(AppRoutes.loginPageRoute),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
