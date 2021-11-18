import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/custom_button.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/stroked_text.dart';

class LoginPage extends StatelessWidget {
  static const loginPageRouteName = 'login_page_route_name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Column(
                    
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,
                        color: kGreyColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            textWithStroke(text: 'Welcome'),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text('BACK',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 37,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 5,
                    top: 20,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white38,
                      ),
                    ),
                  ),
                ],
              ),
              
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: kGreyInputField,
                            borderRadius: BorderRadius.circular(10)),
                        width: 300,
                        height: 50,
                        // padding: EdgeInsets.all(10),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),
                                    width: 1)),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey),
                            // contentPadding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                            
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: kGreyInputField,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),
                                    width: 1)),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(left: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      customButton(
                        'Login',
                        backgroundColor: kGreyColor,
                        color: Colors.white,
                        borderColor: Colors.transparent,
                        onTap: () {},
                        width: 300,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t Have Account Yet?',
                            style: TextStyle(
                              color: kGreyColor,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          signUpTextButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SvgPicture.asset('assets/svgs/login_footer.svg'),
              // SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector signUpTextButton() {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Sign Up',
        style: TextStyle(
            color: kYellow, fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}
