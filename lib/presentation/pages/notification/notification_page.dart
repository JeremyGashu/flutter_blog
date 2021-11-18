import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';

class NotificationPage extends StatelessWidget {
  static const notificationPageRouteName = 'notificationPageRouteName';
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
                      'Notification',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
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
              height: 36,
              color: kGreySearchField,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: kGreyText,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              children: [
                //text and time
                notificationTile(),
                notificationTile(),
                notificationTile(
                    content: 'You have successfully published a story'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container notificationTile({String content, String time}) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  content ?? 'You have successfully upgraded your subscription',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kNotiicationColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  time ?? '08:23',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: kDefaultTextColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
        ],
      ),
    );
  }
}
