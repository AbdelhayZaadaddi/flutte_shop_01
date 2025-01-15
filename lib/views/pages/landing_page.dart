import 'package:flutter/material.dart';
import 'package:shop_01/utilities/routes.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text('Welcome to Our Store',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            child: Text('Login',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onTap: () => Navigator.of(context).pushNamed(AppRoutes.loginPageRoute),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              child: Text('Register',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                              onTap: () => Navigator.of(context).pushNamed(AppRoutes.registerPageRoute),
                          ),
                        )
                      )
                    ]
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
