import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/pages/notification/notification_page.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/edit_profile_page.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/liked_stories.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/my_stories.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/saved_stories.dart';

class ProfilePage extends StatelessWidget {
  static const profilePageRouteName = 'profile page route name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      'Profile',
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
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 250,
              color: kProfilePageBackground,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 68,
                    height: 68,
                    // height: 0,
                    padding: EdgeInsets.all(3),
                    // margin: EdgeInsets.all(5),
                    // margin: EdgeInsets.only(
                    //     left: 15, right: 10, bottom: 10, top: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/selam.jpg',
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '@Selam Tesfaye',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
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
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
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
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView(
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                buildListTile(
                    text: 'Account',
                    icon: Icon(
                      Icons.person_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, EditProfilePage.editProfilePageRouteName);
                    }),
                buildListTile(
                    text: 'My Stories',
                    icon: Icon(
                      Icons.article,
                      size: 20,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, MyStoriesPage.myStoriesPageRouteName);
                    }),
                buildListTile(
                    text: 'Saved',
                    icon: Icon(
                      Icons.save,
                      size: 20,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, SavedStoriesPage.savedStoriesPageRouteName);
                    }),
                buildListTile(
                    text: 'I Liked',
                    icon: Icon(
                      Icons.favorite,
                      size: 20,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, LikedStoriesPage.likedStoriesPageRouteName);
                    }),
                buildListTile(
                    text: 'Notification Setting',
                    icon: Icon(
                      Icons.notifications,
                      size: 20,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, NotificationPage.notificationPageRouteName);
                    }),
                buildListTile(
                  text: 'My Subscription',
                  icon: Icon(
                    Icons.subscriptions,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                buildListTile(
                  text: 'Setting',
                  icon: Icon(
                    Icons.settings,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                buildListTile(
                  text: 'Signout',
                  icon: Icon(
                    Icons.logout,
                    size: 20,
                    color: Colors.black,
                  ),
                  color: kProfilePageBackground,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildListTile(
    {@required String text, Function onTap, @required Icon icon, Color color}) {
  return ListTile(
    tileColor: color ?? Colors.white,
    onTap: onTap ?? () {},
    leading: icon,
    title: Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );
}
