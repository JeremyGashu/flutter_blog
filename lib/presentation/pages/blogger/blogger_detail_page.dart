import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/stories_tile.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/profile_page.dart';

class BloggerDetailPage extends StatelessWidget {
  static const bloggerDetailPageRouteName = 'blogger_detail_page_route_name';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: CustomScrollView(
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
                        'Selam Tesfaye',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //stack
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 315,
                    child: Image.asset(
                      'assets/images/selam.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 315,
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
                      child: Column(
                        children: [
                          Text(
                            '@Selam Tesfaye',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '3.8K',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Followers',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '120',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          //follow btn
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, ProfilePage.profilePageRouteName);
                            },
                            child: Container(
                              width: 213,
                              height: 40,
                              decoration: BoxDecoration(
                                color: kYellow,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),

            SliverToBoxAdapter(
              child: Center(
                child: TabBar(
                  isScrollable: true,
                  labelColor: kYellowBotton,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: kYellowBotton,
                  labelPadding: EdgeInsets.all(15),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4,
                  labelStyle: TextStyle(
                      color: Colors.yellow,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  tabs: [
                    Text(' Stories '),
                    Text(' About '),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 36,
                color: kGreySearchField,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '2,100 Stories',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: kGreyText,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune,
                        color: Colors.black,
                        size: 23,
                      ),
                    ),
                    Text(
                      'Filter',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),

            SliverFillRemaining(
              // hasScrollBody: false,
              child: TabBarView(
                children: [
                  ListView(
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      storiesTile(),
                      storiesTile(),
                      storiesTile(),
                      storiesTile(),
                      storiesTile(),
                      storiesTile(),
                      storiesTile(),
                      storiesTile(),
                      storiesTile(),
                    ],
                  ),
                  // Text('About'),
                  Center(child: Text('About')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
