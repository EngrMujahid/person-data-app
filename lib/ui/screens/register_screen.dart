import 'package:flutter/material.dart';
import 'package:pernaldata/core/constants/colors.dart';
import 'package:pernaldata/core/constants/textStyle.dart';
import 'package:pernaldata/ui/custom_widget/custom_blue_button.dart';
import 'package:pernaldata/ui/custom_widget/custom_header.dart';
import 'package:pernaldata/ui/custom_widget/form_container.dart';
import 'package:pernaldata/ui/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scffoldBgColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(17, 50, 15, 0),
            child: Column(
              children: [
                // Header Section
                CustomHeader('Register'),

                SizedBox(height: 66),

                //Login form
                FormContainer(
                  child: Column(
                    children: [
                      //Full Name Textfield
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Full Name',
                          hintText: 'first Last',
                        ),
                        keyboardType: TextInputType.text,
                      ),

                      //Father Name Textfield
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Father name',
                          hintText: 'First Last',
                        ),
                        keyboardType: TextInputType.text,
                      ),

                      //Phone Textfield

                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.phone),
                          labelText: 'Phone',
                          hintText: '+92123**',
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      //Email Textfield
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Email',
                          hintText: 'username@gmail.com',
                        ),
                      ),

                      //Password field
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock_open),
                          labelText: 'Password',
                          hintText: '******',
                        ),
                      ),
                    ],
                  ),
                ),

                //Login Button
                SizedBox(
                  height: 62,
                ),
                // ignore: deprecated_member_use
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Please note that you must be use your offical',
                    style: regularBlackTextStyle.copyWith(fontSize: 13),
                    children: [
                      TextSpan(
                        text: '  student email ',
                        style: regularBlackTextStyle.copyWith(
                            fontSize: 13, color: blueThemeColor),
                      ),
                      TextSpan(text: 'while registering.')
                    ],
                  ),
                ),

                SizedBox(height: 30),

                CustomBlueButton(
                    text: 'Register',
                    onPressed: () {
                      
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    }),

                SizedBox(height: 20),
                // Register text

                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Already have account?',
                    style: regularBlackTextStyle.copyWith(fontSize: 20),
                    children: [
                      TextSpan(
                        text: ' Log In',
                        style: boldBlueTextStyle.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
