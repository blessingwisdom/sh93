import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                const CircleAvatar(
                  radius: 55.0,
                  backgroundImage: AssetImage('images/logo.png'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text("Login to your account"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      margin: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        top: 5.0,
                        bottom: 4.0,
                      ),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: const TextStyle(
                                fontSize: 12.0, color: Colors.black38),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
