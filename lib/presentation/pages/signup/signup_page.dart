import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/custom_button.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/stroked_text.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:prepreocessor_starter/presentation/pages/signup/select_interest.dart';

class SignUpPage extends StatelessWidget {
  static const signUpPageRouteName = 'sign_up_page_route_name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 280,
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: kGreyColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textWithStroke(text: 'Welcome'),
                      ],
                    ),
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
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: kGreyInputField,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          keyboardType: TextInputType.name,
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
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(left: 15),
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
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                            contentPadding: EdgeInsets.only(left: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Container(
                      //   width: 300,
                      //   height: 50,
                      //   decoration: BoxDecoration(
                      //       color: kGreyInputField,
                      //       borderRadius: BorderRadius.circular(10)),
                      //   child: TextField(
                      //     keyboardType: TextInputType.phone,
                      //     decoration: InputDecoration(
                      //       enabledBorder: OutlineInputBorder(
                      //           borderRadius: BorderRadius.only(
                      //               topLeft: Radius.circular(10),
                      //               topRight: Radius.circular(10)),
                      //           borderSide: BorderSide(
                      //               color: Colors.grey.withOpacity(0.5),
                      //               width: 1)),
                      //       focusedBorder: OutlineInputBorder(
                      //           borderRadius: BorderRadius.only(
                      //               topLeft: Radius.circular(10),
                      //               topRight: Radius.circular(10)),
                      //           borderSide: BorderSide(
                      //               color: Colors.grey.withOpacity(0.8),
                      //               width: 1)),
                      //       hintText: 'Phone No',
                      //       hintStyle: TextStyle(color: Colors.grey),
                      //       contentPadding: EdgeInsets.only(left: 15),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        child: Text(
                          'Date of Birth',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: DatePickerWidget(
                          looping: false, // default is not looping
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2030, 1, 1),
                          initialDate: DateTime.now(),
                          dateFormat: "dd-MMM-yyyy",
                          locale: DatePicker.localeFromString('en'),
                          onChange: (DateTime newDate, _) {},
                          pickerTheme: DateTimePickerTheme(
                            backgroundColor: Colors.transparent,
                            itemTextStyle:
                                TextStyle(color: Colors.black, fontSize: 14),
                            dividerColor: kGreyInputField,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                        'Sign Up',
                        backgroundColor: kGreyColor,
                        color: Colors.white,
                        borderColor: Colors.transparent,
                        onTap: () {
                          Navigator.pushNamed(context,
                              SelectInterestPage.selectInterestRouteName);
                        },
                        width: 300,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              // SvgPicture.asset('assets/svgs/login_footer.svg'),
              // SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
