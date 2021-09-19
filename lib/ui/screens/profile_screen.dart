import 'package:flutter/material.dart';
import 'package:pernaldata/core/constants/colors.dart';
import 'package:pernaldata/core/constants/textStyle.dart';
import 'package:pernaldata/ui/custom_widget/profile_tab.dart';
import 'package:pernaldata/ui/screens/login_screen.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueThemeColor,
        body:Padding(
          padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //profile text
              Text('Profile',
                style: boldWhiteTextStyle,
              ),

              SizedBox(height: 5,),


              Row(
                children: [
                  //profile Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image(
                      image: NetworkImage('https://4.bp.blogspot.com/-_z9Vl5iliyI/XCnmEIbZpOI/AAAAAAABbJw/ky7hqLhJ68AyqG1hAOI6_bi2hB0s_OKUgCLcBGAs/s1600/Danish20Taimoor2010-22-1442658057.png'),
                      height: 90,
                      width: 80,
                      fit: BoxFit.cover,

                    ),
                  ),
                  SizedBox(width: 26,),

                  //personal information

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Danish Taimoor',
                        style: userNameStyle,
                      ),

                      SizedBox(height:5),


                      Text('danish@gmail.com',
                          style: userNameStyle.copyWith(
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  ),
                ],
              ),

              SizedBox(height:29),
              //tabs

              Expanded(
                child: Container(
                    padding: EdgeInsets.only(left:20,right:20,top:53),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(20),
                        topRight:Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        ProfileTab(
                          icon: Icons.add_location,
                          text: 'Manage Address',
                        ),
                        Divider(thickness: 1,),

                        ProfileTab(
                          icon: Icons.file_copy,
                          text: 'Update Information',
                        ),
                        Divider(thickness: 1,),

                        ProfileTab(
                          icon: Icons.star_half,
                          text: 'About Antonx',
                        ),
                        Divider(thickness: 1,),

                        SizedBox(height: 20,),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            'Log Out',
                            style: userNameStyle.copyWith(color:blueThemeColor),
                          ),
                        ),



                      ],
                    )
                ),
              ),

            ],


          ),
        ),

      ),
    );
  }
}