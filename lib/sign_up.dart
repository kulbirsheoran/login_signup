import 'package:flutter/material.dart';
import 'package:login_signup/DbHelper.dart';
import 'package:login_signup/splash_page.dart';
import 'package:login_signup/dashboard_page.dart';
import 'package:login_signup/user_info.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Container(
            //alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 1,
            //  width: 300,

            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: mobileController,
                    decoration: InputDecoration(hintText: " Input Mobile No"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please Input Mobile No";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(hintText: "Input Email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Input Email";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: mobileController,
                    decoration: InputDecoration(hintText: " Input Password"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Input Password";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(hintText: " Confirm Password"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Confirm Password";
                      }
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          String mobile = mobileController.text;
                          String email = emailController.text;
                          String password = passwordController.text;
                          UserInfo userInfo = UserInfo(
                              mobile: mobile, email: email, password: password);
                          DbHelper.userInfo = userInfo;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>SplashPage()));
                        }
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
