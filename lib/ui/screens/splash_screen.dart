import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pernaldata/core/constants/textStyle.dart';
import 'package:pernaldata/ui/screens/register_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2) ,() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => RegisterScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 0,
              ),
              //logo section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo section
                  Image(
                    image: AssetImage('assets/images/person.jpg'),
                    height: 88,
                    width: 88,
                    fit: BoxFit.contain,
                  ),
                  // column text section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Person',
                        style: boldBlueTextStyle,
                      ),
                      Text(
                        'BioData',
                        style: regularBlackTextStyle,
                      ),
                    ],
                  )
                ],
              ),
              //powered by section
              Column(
                children: [
                  Text(
                    'Powerd by',
                  ),
                  Image(
                    height: 55,
                    width: 135,
                    image: AssetImage('assets/images/antonx.png'),
                  ),
                  SizedBox(height: 36),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
