import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/status_button.dart';
import 'package:prepreocessor_starter/presentation/pages/blogger/blogger_detail_page.dart';

///Top authors circlularwidget
GestureDetector topAuthorTile(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(
          context, BloggerDetailPage.bloggerDetailPageRouteName);
    },
    child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                padding: EdgeInsets.all(3),
                // margin: EdgeInsets.all(5),
                margin:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/images/selam.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Selam Tesfaye',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Individual Journalist Focused on Fashion',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        buildStatusButton(
                          text: '3.8k',
                          icon: Icon(
                            Icons.rss_feed_outlined,
                            color: Colors.black,
                            size: 14,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  color: kYellowBottom,
                                  child: Center(
                                      child: Text(
                                    'Follow',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ))),
                      ],
                    ),
                  ],
                )),
              ),
            ],
          ),
          Divider(
            indent: 5,
            endIndent: 5,
          ),
        ],
      ),
    ),
  );
}

///Bloggers list tile
GestureDetector bloggerTile(BuildContext context, {String blogger}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(
          context, BloggerDetailPage.bloggerDetailPageRouteName);
    },
    child: Stack(
      children: [
        Container(
          width: 80,
          // height: 0,
          padding: EdgeInsets.all(3),
          // margin: EdgeInsets.all(5),
          margin: EdgeInsets.only(left: 15, right: 10, bottom: 10, top: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(40),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/images/selam.jpg',
                fit: BoxFit.cover,
              )),
        ),
        buildBadge(),
      ],
    ),
  );
}

Positioned buildBadge() {
  return Positioned(
    top: 8,
    right: 8,
    child: Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
          child: Text(
        Random().nextInt(99).toString(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      )),
    ),
  );
}

///top news horizontal list
Container buildTopNews() {
  return Container(
    height: 280,
    color: Colors.grey.withOpacity(0.1),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Text(
            'Top News',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 220,
          // padding: EdgeInsets.only(left: 20),
          // color: Colors.black,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              topNewsWidget(),
              topNewsWidget(),
              topNewsWidget(),
              topNewsWidget(),
            ],
          ),
        ),
        Spacer(),
      ],
    ),
  );
}

Container topNewsWidget() {
  return Container(
    margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
    child: Stack(
      // alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 200,
            height: 220,
            color: Colors.transparent,
            // padding: EdgeInsets.all(10),
            // margin: EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/ford.jpg',
              fit: BoxFit.cover,
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20),
            //   gradient: LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [
            //       Colors.transparent,
            //       Colors.black.withOpacity(0.3),
            //     ],
            //   ),
            // ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 220,
            width: 200,
            // padding: EdgeInsets.all(10),
            // margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'How to find Bid Tendering to Grow Your Business?',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '3.8k',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget headlineTile() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            //first row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Container(
                    width: 34,
                    height: 34,
                    child: Image.asset('assets/images/sample_pp.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                //name
                Text(
                  'Kirubel Tesfaye',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                //hours
                Text(
                  '2 hrs',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //text : headline
            Text(
              'Building new Ethiopia with Boloke and Adenguare',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.01),
            ),
            //buttons
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildTags(text: 'Boloke'),
                buildTags(text: 'RIDE'),
                buildTags(text: 'Transport'),
              ],
            ),
          ],
        ),
      ),
      Divider(
        indent: 10,
        endIndent: 10,
      ),
    ],
  );
}

Container buildTags({String text}) {
  return Container(
    width: 65,
    height: 30,
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.withOpacity(0.1),
    ),
    child: Center(
      child: Text(
        text ?? '3.8K',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Container customSection({String title}) {
  return Container(
    width: double.infinity,
    // height: 35,
    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
    margin: EdgeInsets.only(bottom: 15, top: 15),
    color: Colors.grey.withOpacity(0.1),
    child: Text(
      title ?? 'Following',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

///It receives news instance and renders the news with a stack
Widget featuredNewsCarouselItem(
    {String imageUrl, String text, Function onTap}) {
  return GestureDetector(
    onTap: onTap ?? () {},
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          child: Image.asset(
            'assets/images/ford.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black,
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                '2022 F-150 LIGHTENING, be among the first to own the all new 2022 Ford F-150',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
