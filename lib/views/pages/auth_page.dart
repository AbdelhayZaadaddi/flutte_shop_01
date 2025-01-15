import 'package:flutter/material.dart';
import 'package:shop_01/utilities/enums.dart';
import 'package:shop_01/utilities/routes.dart';
import 'package:shop_01/views/pages/register_page.dart';
import 'package:shop_01/views/widgets/main_button.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPage();
}

class _AuthPage extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var _authType = AuthFormType.login;

  void ChangeAuthType (){
    setState(() {
      if (_authType == AuthFormType.login){
        _authType = AuthFormType.register;
      }
      else{
        _authType = AuthFormType.login;
      }
    });
  }

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
                Row(
                  children: [
                    IconButton(onPressed: () => Navigator.of(context).pushNamed(AppRoutes.landingPageRoute), icon: Icon(Icons.arrow_back)),
                    Text(
                      _authType == AuthFormType.login ? 'Login' : 'Register',
                    ),
                  ],
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
                    child: _authType == AuthFormType.login
                      ? Text('Forget your password?')
                      : SizedBox.shrink()
                  ),
                ),
                const SizedBox(height: 16,),
                MainButton(
                    text: _authType == AuthFormType.login ? 'Login' : 'Register',
                    onTap: () {}
                ),
                const SizedBox(height: 15,),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    child: Text(_authType == AuthFormType.login ? 'Don\'t have an account? Register' : 'You have an account login'),
                    onTap: ChangeAuthType,
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Text(_authType == AuthFormType.login ? 'or Login with' : 'Or Register With',
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