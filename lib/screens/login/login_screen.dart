import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/bottomnavbar/bottomnavbarScreen.dart';
import 'package:instagram_ui/screens/signup/signup_screen.dart';
import 'package:instagram_ui/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(imgurl: "logo.png"),
              SizedBox(height: 20),
              UiHelper.CustomTexField(
                controller: emailController,
                text: "Email",
                tohide: false,
                textinputtype: TextInputType.emailAddress,
              ),
              SizedBox(height: 10),
              UiHelper.CustomTexField(
                controller: passwordController,
                text: "password",
                tohide: true,
                textinputtype: TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  UiHelper.CustomTextButton(
                    text: "Forgot password?",
                    callback: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              UiHelper.CustomButton(
                buttonname: "Log In",
                callback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bottomnavbarscreen(),
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomImage(imgurl: "Icon.png"),
                  UiHelper.CustomTextButton(
                    text: "Log in with Facebook",
                    callback: () {},
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "OR",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an  account?",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  UiHelper.CustomTextButton(
                    text: "Sign Up",
                    callback: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
