import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/custom_button.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/stroked_text.dart';
import 'package:prepreocessor_starter/presentation/pages/homepage/homepage.dart';
import 'package:prepreocessor_starter/presentation/pages/login/login_page.dart';
import 'package:prepreocessor_starter/presentation/pages/signup/signup_page.dart';

class WelcomePage extends StatelessWidget {
  static const welcomePageRouteName = 'welcome_page_route_name';

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              textWithStroke(text: 'All In One'),
              SizedBox(
                height: 10,
              ),
              Text('PLATFORM',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Blogs, News, Researches & Development and more...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: SvgPicture.asset('assets/svgs/welcome_page_man.svg')),
              SizedBox(
                height: 30,
              ),
              Container(
                key: ValueKey('loginButton'),
                child: customButton('Log in', onTap: () {
                  Navigator.pushNamed(context, LoginPage.loginPageRouteName);
                }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                key: ValueKey('signupButton'),
                child: customButton('Register',
                    color: Colors.white,
                    backgroundColor: kGreyColor, onTap: () {
                  Navigator.pushNamed(context, SignUpPage.signUpPageRouteName);
                }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                key: ValueKey('signUpAsGuestButton'),
                child: continueAsGestWidget(onTap: () {
                  Navigator.pushNamed(context, HomePage.homePageRouteName);
                }),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget continueAsGestWidget({Function onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'Continue as Guest User',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
