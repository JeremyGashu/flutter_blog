import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/news_tile.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/stories_tile.dart';
import 'package:prepreocessor_starter/presentation/pages/homepage/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  static const String homePageRouteName = 'home_page_route_name';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.yellow[800],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          items: [ 
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: 'News',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.rate_review_outlined),
                label: 'Blog',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb_outline),
                label: 'R&D',
                backgroundColor: Colors.black),
          ],
        ),
        body: Builder(builder: (context) {
          return NestedScrollView(
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        featuredNewsCarouselItem(),
                        featuredNewsCarouselItem(),
                        featuredNewsCarouselItem(),
                      ],
                      options: CarouselOptions(
                        height: 300,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        onPageChanged: (_, __) {
                          print('page changed');
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.black87.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.black87.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.black87.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //sectioning
                    customSection(title: 'Following'),
                    //following section
                    storiesTile(),
                    storiesTile(),
                    storiesTile(),

                    //sectioning
                    customSection(title: 'Headlines'),
                    //following section

                    headlineTile(),
                    headlineTile(),
                    headlineTile(),

                    //top news section
                    buildTopNews(),

                    //sectioning
                    customSection(title: 'Following'),

                    //following bloggers
                    Container(
                      height: 95,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          bloggerTile(context),
                          bloggerTile(context),
                          bloggerTile(context),
                          bloggerTile(context),
                          bloggerTile(context),
                        ],
                      ),
                    ),

                    customSection(title: 'Top Authors'),
                    topAuthorTile(context),
                    topAuthorTile(context),
                    topAuthorTile(context),
                    topAuthorTile(context),
                    topAuthorTile(context),

                    customSection(title: 'Recent'),
                    newsTile(),
                    newsTile(),
                    newsTile(),
                  ],
                ),
                Center(
                    child: Text(
                  'Health',

                  /// Index:0
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
                Center(
                    child: Text(
                  'Business',

                  /// Index:1
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
                Center(
                    child: Text(
                  'Entertainment',

                  /// Index:2
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ],
            ),

            headerSliverBuilder: (context, value) {
              return [
                // header
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      //Expanded(child: _getComplaintPreviewCard(), flex: 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.black,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 15),
                                          decoration: BoxDecoration(
                                            color:
                                                kSearchFieldBg.withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: TextField(
                                            cursorColor: Colors.white,
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color: Colors.white,
                                              ),

                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              // fillColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            print('button clicked');
                                          },
                                          icon: Icon(
                                            Icons.tune,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.black,
                            width: double.infinity,
                            child: Column(
                              // mainAxisSize: MainAxisSize.max,
                              children: [
                                TabBar(
                                  labelColor: Colors.yellow[800],
                                  indicatorColor: Colors.yellow[800],
                                  unselectedLabelColor: Colors.white,
                                  isScrollable: true,
                                  unselectedLabelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                  labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                  indicatorWeight: 5,
                                  tabs: [
                                    Tab(
                                      text: 'All',
                                    ),
                                    Tab(
                                      text: 'Health',
                                    ),
                                    Tab(
                                      text: 'Business',
                                    ),
                                    Tab(
                                      text: 'Entertainment',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // _getTabBarView()
                      // Expanded(child: _getTabBarView(), flex: 5)
                    ],
                  ),
                ),
              ];
            },
            // mainAxisSize: MainAxisSize.min,
          );
        }),
      ),
    );
  }
}
