import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/presentation/pages/blogger/blogger_detail_page.dart';
import 'package:prepreocessor_starter/presentation/pages/homepage/homepage.dart';
import 'package:prepreocessor_starter/presentation/pages/login/login_page.dart';
import 'package:prepreocessor_starter/presentation/pages/notification/notification_page.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/edit_profile_page.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/liked_stories.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/my_stories.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/profile_page.dart';
import 'package:prepreocessor_starter/presentation/pages/profile/saved_stories.dart';
import 'package:prepreocessor_starter/presentation/pages/signup/select_interest.dart';
import 'package:prepreocessor_starter/presentation/pages/signup/signup_page.dart';
import 'package:prepreocessor_starter/presentation/pages/welcome/welcome_page.dart';

class AppRouter {
  static Route onGenerateRoutes(RouteSettings routeSettings) {
    // dynamic args = routeSettings.arguments;
    switch (routeSettings.name) {
      case WelcomePage.welcomePageRouteName:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case LoginPage.loginPageRouteName:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case SignUpPage.signUpPageRouteName:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case SelectInterestPage.selectInterestRouteName:
        return MaterialPageRoute(builder: (_) => SelectInterestPage());
      case HomePage.homePageRouteName:
        return MaterialPageRoute(builder: (_) => HomePage());
      case BloggerDetailPage.bloggerDetailPageRouteName:
        return MaterialPageRoute(builder: (_) => BloggerDetailPage());
      case ProfilePage.profilePageRouteName:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case EditProfilePage.editProfilePageRouteName:
        return MaterialPageRoute(builder: (_) => EditProfilePage());
      case MyStoriesPage.myStoriesPageRouteName:
        return MaterialPageRoute(builder: (_) => MyStoriesPage());
      case SavedStoriesPage.savedStoriesPageRouteName:
        return MaterialPageRoute(builder: (_) => SavedStoriesPage());
      case LikedStoriesPage.likedStoriesPageRouteName:
        return MaterialPageRoute(builder: (_) => LikedStoriesPage());
      case NotificationPage.notificationPageRouteName:
        return MaterialPageRoute(builder: (_) => NotificationPage());
      default:
        return null;
    }
  }
}
