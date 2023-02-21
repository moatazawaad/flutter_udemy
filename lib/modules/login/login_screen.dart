//stl a5tsar ll widget stateless to create it fast
//import 'package:flutter/cupertino.dart';
//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_udemy/modules/home/home_screen.dart';
import 'package:flutter_udemy/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  defaultFormText(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'email must not be empty';
                      }
                      return null;
                    },
                    label: 'Email',
                    prefixIcon: Icons.email,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormText(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    isPassword: isPassword,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Password is too short';
                      }
                      return null;
                    },
                    label: 'Password',
                    prefixIcon: Icons.lock,
                    suffixIcon:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormText(
                    controller: phoneController,
                    type: TextInputType.phone,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Mobile Number is not valid';
                      }
                      return null;
                    },
                    label: 'Mobile Number',
                    prefixIcon: Icons.phone,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  loginButton(
                    function: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: 'LoGiN',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account',
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 150.0,
                  // ),
                  Row(
                    //  mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'All copyright reserved Moataz Awaad.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//labeltext = hinttext in tff
// labeltext لما بدوس واكتب بيطلع فوق مبيخختفيش
// tff feha 2 icon 1 prefixicon fe awel text
// w sufix icon f a5r el text
