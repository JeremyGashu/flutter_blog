import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/stories_tile.dart';

class LikedStoriesPage extends StatelessWidget {
  static const likedStoriesPageRouteName = 'likedStoriesPageRouteName';
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
                      'Liked',
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
                      '6 Stories',
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
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
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
                storiesTile(),
                storiesTile(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(),
          ),
        ],
      ),
    );
  }
}

Widget buildEditButton({String text = 'Edit', Function onTap}) {
  return GestureDetector(
    onTap: onTap ?? () {},
    child: Container(
        width: 70,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: kGreyText.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: kGreyText,
            ),
          ),
        )),
  );
}

Widget buildTile(
    {@required String title, @required String value, bool obscured = false}) {
  return Container(
    padding: EdgeInsets.only(left: 25, right: 25),
    margin: EdgeInsets.symmetric(vertical: 15),
    child: Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(obscured ? '*******' : value,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
              ],
            )),
            buildEditButton(),
            // SizedBox(width: 20,),
          ],
        ),
        Divider(),
      ],
    ),
  );
}
