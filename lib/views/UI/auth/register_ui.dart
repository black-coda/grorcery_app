import 'package:flutter/material.dart';

import 'custom_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "GreenVege",
                  style: TextStyle(
                    fontFamily: "Aloe",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: 318,
                  child: Text(
                    'Grocery Shopping has never been this much fun',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                //form field
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const CustomFormWidget(
                        labelText: "email",
                        helperText: 'email must contain @',
                        labelBool: true,
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const CustomFormWidget(
                        labelText: "Full-name",
                        labelBool: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormWidget(
                        labelText: "Password",
                        labelBool: false,
                        obscure: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormWidget(
                        labelText: "Confirm Password",
                        labelBool: false,
                        obscure: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 190.0,
                        height: 43,
                        padding: const EdgeInsets.all(16),
                        color: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Text(
                          "Sign up",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Have an account?,",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              //TODO: To implement Navigate to login
                            },
                            child: Text(
                              "Register Now",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                      MaterialButton(
                        onPressed: null,
                        color: Theme.of(context).colorScheme.primary,
                        child: const Text("Register"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


