import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pernaldata/core/constants/colors.dart';
import 'package:pernaldata/core/constants/textStyle.dart';
import 'package:pernaldata/core/services/auth_service.dart';
import 'package:pernaldata/ui/custom_widget/custom_blue_button.dart';
import 'package:pernaldata/ui/custom_widget/custom_header.dart';
import 'package:pernaldata/ui/custom_widget/form_container.dart';
import 'package:pernaldata/ui/screens/profile_screen.dart';
import 'package:pernaldata/ui/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  late String email;
  late String password;
  final AuthService authservice = AuthService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scffoldBgColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(17, 50, 15, 0),
          child: Column(
            children: [
              // Header Section
              CustomHeader('Log In'),

              SizedBox(height: 66),

              //Login form
              FormContainer(
                child: Column(
                  children: [
                    //Email Textfield
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: 'EMAIL',
                        hintText: 'username@gmail.com',
                      ),
                      onChanged: (val) {
                        email = val;
                      },
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
                      onChanged: (val) {
                        password = val;
                      },
                    ),
                  ],
                ),
              ),

              //Login Button
              SizedBox(
                height: 62,
              ),
              // ignore: deprecated_member_use
              CustomBlueButton(
                text: 'Log In',
                onPressed: () async {
                  final status = await authservice.login(email, password);
                  if (status) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  } else {
                    print('object');
                  }
                },
              ),
              SizedBox(height: 66),
              // Register text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Donot have an account?',
                    style: regularBlackTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: Text('Register',
                        style: boldBlueTextStyle.copyWith(
                          fontSize: 20,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
