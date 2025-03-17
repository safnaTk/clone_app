import 'package:clone_app/global_widgets/reusable_button.dart';
import 'package:clone_app/utils/constants/color_constants.dart';
import 'package:clone_app/view/aboutus_screen.dart/aboutus_screen.dart';
import 'package:clone_app/view/home_screen/home_screen.dart';
import 'package:clone_app/view/illness_screen/illness_screen.dart';
import 'package:clone_app/view/insurance_screen/insurance_screen.dart';
import 'package:clone_app/view/login_screen/login_screen.dart';
import 'package:clone_app/view/member_screen/member_screen.dart';
import 'package:clone_app/view/partners_screen/partners_screen.dart';
import 'package:clone_app/view/payment_screen/payment_screen.dart';
import 'package:clone_app/view/promotional_offer_screen/promotional_offer_screen.dart';

import 'package:clone_app/view/trip%20_history_screen/trip_history_screen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.blue,
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: Icon(Icons.menu, size: 30, color: ColorConstants.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),

        title: Text("D I A L 4 2 4 2", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.phone, color: Colors.black, size: 25),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(color: ColorConstants.blue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10, width: 20),

                        Text(
                          "User Name",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(
                "HOME",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "TRIP HISTORY",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TripHistoryScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "PROMOTIONAL OFFERS",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PromotionalOfferScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                "MEMBER",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MemberScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "INSURANCE",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => InsuranceScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "ILLNESS",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => IllnessScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "PAYMENT MODE",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "SETTINGS",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SettingScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "PARTNERS",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PartnersScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "ABOUT US",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
               Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "SIGN OUT",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
               Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LogInScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue[900],
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, size: 40, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "PERSONAL PROFILE",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(hintText: "FIRST NAME"),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(hintText: "LAST NAME"),
                        ),
                      ),
                    ],
                  ),
                  TextFormField(decoration: InputDecoration(hintText: "EMAIL")),
                  SizedBox(height: 10),
                  TextFormField(decoration: InputDecoration(hintText: "STATE")),
                  SizedBox(height: 10),
                  TextFormField(decoration: InputDecoration(hintText: "CITY")),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(hintText: "SUBURB"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "MOBILE NO"),
                  ),

                  SizedBox(height: 10),

                  ReusableButton(name: "SUBMIT", onButtonPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
