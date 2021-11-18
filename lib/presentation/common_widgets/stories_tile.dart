
import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/presentation/common_widgets/status_button.dart';

///It receives blog as a param and renders the blog
Container storiesTile() {
  return Container(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
                flex: 2,
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
                        //name
                        Text(
                          'Kirubel Tesfaye',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        //hours
                        Text(
                          '2 hrs',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildStatusButton(
                          text: '3.8K',
                          icon: Icon(
                            Icons.favorite,
                            size: 17,
                            color: Colors.black,
                          ),
                        ),
                        buildStatusButton(
                          text: '32',
                          icon: Icon(
                            Icons.chat_bubble_outline,
                            size: 17,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            size: 17,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: Image.asset(
                    'assets/images/boloke.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 1,
        ),
        //
        Divider(
            // indent: 10,
            // endIndent: 10,
            ),
      ],
    ),
  );
}