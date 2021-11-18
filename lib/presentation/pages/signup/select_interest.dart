import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/custom_button.dart';
import 'package:prepreocessor_starter/presentation/pages/homepage/homepage.dart';

class SelectInterestPage extends StatelessWidget {
  static const selectInterestRouteName = 'select_interest_route_name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: 85,
                  child: SafeArea(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                    width: 300,
                    child: Lottie.asset('assets/json/express-interest.json')),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text('Choose your Interest',
                        style: TextStyle(
                            color: kYellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('choose minimum 3 interest to continue',
                        style: TextStyle(color: kGreyColor, fontSize: 12)),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  width: double.infinity,
                  color: kGreyInputField.withOpacity(0.7),
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 80,
                  ),
                  child: Center(
                    child: Container(
                      width: 300,
                      child: Center(
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Art",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Sport",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Entertainment",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Fashion",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Sport",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Health",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Business",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Finance",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Music",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Art",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Sport",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Entertainment",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Fashion",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: FilterChip(
                                padding: EdgeInsets.all(10),
                                label: Text(
                                  "Art",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                    side: BorderSide(color: kGreyColor)),
                                onSelected: (bool value) {
                                  print("selected");
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Spacer(),
              // SizedBox(
              //   height: 20,
              // ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Center(
                child: customButton('Continue',
                    color: Colors.white,
                    backgroundColor: kGreyColor,
                    borderColor: Colors.transparent,
                    width: 300, onTap: () {
                  Navigator.pushNamed(context, HomePage.homePageRouteName);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
