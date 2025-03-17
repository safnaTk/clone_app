import 'package:clone_app/utils/constants/color_constants.dart';
import 'package:clone_app/view/aboutus_screen.dart/aboutus_screen.dart';
import 'package:clone_app/view/home_screen/home_screen.dart';
import 'package:clone_app/view/illness_screen/illness_screen.dart';
import 'package:clone_app/view/insurance_screen/policy_screen.dart';
import 'package:clone_app/view/login_screen/login_screen.dart';

import 'package:clone_app/view/member_screen/member_screen.dart';
import 'package:clone_app/view/partners_screen/partners_screen.dart';
import 'package:clone_app/view/payment_screen/payment_screen.dart';
import 'package:clone_app/view/promotional_offer_screen/promotional_offer_screen.dart';
import 'package:clone_app/view/setting_screen/setting_screen.dart';
import 'package:clone_app/view/trip%20_history_screen/trip_history_screen.dart';
import 'package:flutter/material.dart';

class InsuranceScreen extends StatelessWidget {
  const InsuranceScreen({super.key});

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
              height: 130,
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
      body: Center(
        child: SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PolicyScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.darkteal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(
              "ADD POLICY",
              style: TextStyle(
                color: ColorConstants.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
