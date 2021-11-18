import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';

class EditProfilePage extends StatelessWidget {
  static const editProfilePageRouteName = 'editProfilePageRouteName';
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
                      'Account',
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
              height: 120,
              color: kProfilePageBackground,
              child: Row(
                // mainAxisSize: MainAxisSize.min,

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(width: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text('Picture',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.5),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/selam.jpg',
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: buildEditButton(),
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
                buildTile(
                  value: 'Mahider Asefe',
                  title: 'Name',
                ),
                buildTile(
                  value: 'Mahider Asefa',
                  title: 'Bio',
                ),
                buildTile(
                  value: 'Mahiderafefa@gmail.com',
                  title: 'Email',
                ),
                buildTile(
                  value: '+251912345678',
                  title: 'Phone Number',
                ),
                buildTile(
                  value: 'Female',
                  title: 'Gender',
                ),
                buildTile(
                  value: '12-12-2000',
                  title: 'Date of Birth',
                ),
                buildTile(
                  value: 'Addis Ababa - Ethiopia',
                  title: 'Address',
                ),
                buildTile(
                  value: 'passord value',
                  title: 'Password',
                  obscured: true,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delete Account',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,  
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Permanently delete your account and all your content!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Delete Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
