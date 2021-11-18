
import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/status_button.dart';

///News tile widget
Column newsTile() {
  return Column(
    children: [
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Container(
                    width: 34,
                    height: 34,
                    child: Image.asset('assets/images/selam.jpg'),
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
                      fontSize: 14),
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(3.5)),
                ),
                SizedBox(
                  width: 6,
                ),
                //hours
                Text(
                  '2 hrs ago',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 205,
            child: Image.asset(
              'assets/images/ford.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: Text(
              'RIDE has been working on its park, playing a role in creating a better Addis Ababa, Ethiopia',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  letterSpacing: 1.01,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildStatusButton(
                  text: '3.8k',
                  size: 17,
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 19,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                buildStatusButton(
                  text: '32',
                  size: 17,
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                    size: 19,
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                      size: 20,
                    )),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      Divider(
        indent: 5,
        endIndent: 5,
      ),
    ],
  );
}
