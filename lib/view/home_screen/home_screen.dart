// import 'package:clone_app/utils/constants/color_constants.dart';
import 'package:clone_app/utils/constants/color_constants.dart';
import 'package:clone_app/view/aboutus_screen.dart/aboutus_screen.dart';
import 'package:clone_app/view/illness_screen/illness_screen.dart';
import 'package:clone_app/view/insurance_screen/insurance_screen.dart';
import 'package:clone_app/view/login_screen/login_screen.dart';

import 'package:clone_app/view/member_screen/member_screen.dart';
import 'package:clone_app/view/partners_screen/partners_screen.dart';
import 'package:clone_app/view/payment_screen/payment_screen.dart';
import 'package:clone_app/view/promotional_offer_screen/promotional_offer_screen.dart';
import 'package:clone_app/view/setting_screen/setting_screen.dart';
import 'package:clone_app/view/trip%20_history_screen/trip_history_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // functions to show dialog
  void showAmbulanceDialog(BuildContext context, String type) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(
              child: Text("WITH AC"),
              onPressed: () {
                showEstimatedCostDialog(context, 6063);
              },
            ),
            SimpleDialogOption(
              child: Text("WITHOUT AC"),
              onPressed: () {
                showEstimatedCostDialog(context, 6063);
              },
            ),
            SimpleDialogOption(
              child: Text(
                "CANCEL",
                style: TextStyle(color: ColorConstants.black),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void showEstimatedCostDialog(BuildContext context, double cost) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: ColorConstants.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "ESTIMATED COST",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "₹ $cost",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.black,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context); // Close the cost dialog
                  Navigator.pop(context); // Close the ambulance type dialog
                },
                child: Text(
                  "BOOK NOW",
                  style: TextStyle(fontSize: 18, color: ColorConstants.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
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
            icon: Icon(Icons.phone, color: ColorConstants.black, size: 25),
            onPressed: () {},
          ),
        ],
      ),
      //Drawer
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
                          backgroundColor: ColorConstants.white,
                          child: Icon(
                            Icons.person,
                            size: 40,
                            color: ColorConstants.black,
                          ),
                        ),
                        SizedBox(height: 10, width: 20),

                        Text(
                          "User Name",
                          style: TextStyle(
                            color: ColorConstants.white,
                            fontSize: 18,
                          ),
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
      //body
      body: Column(
        children: [
          Container(
            color: ColorConstants.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: Text(
                        "PICKUP LOCATION",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    child: VerticalDivider(
                      color: ColorConstants.black,
                      thickness: 1,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      child: Text(
                        "DESTINATION",
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorConstants.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              "Assets/images/map.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ],
      ),
      //BottomNavBar
      bottomNavigationBar: Container(
        color: ColorConstants.blue,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "BASIC"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.local_hospital_rounded,
                        size: 30,
                        color: ColorConstants.black,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "BASIC",
                        style: TextStyle(color: ColorConstants.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 1.5,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),

              SizedBox(width: 10),
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "ICU"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.heart_broken_outlined,
                        size: 30,
                        color: ColorConstants.black,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "ICU",
                        style: TextStyle(color: ColorConstants.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 1.5,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "COVID AMBULANCE"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.local_car_wash,
                        size: 30,
                        color: ColorConstants.black,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "COVID",
                        style: TextStyle(color: ColorConstants.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 1.5,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "DEAD BODY"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.dangerous_rounded,
                        size: 30,
                        color: ColorConstants.black,
                      ),
                      SizedBox(height: 5),
                      Text("DEAD BODY", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 1.5,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "PEDIATRIC"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.wc_outlined,
                        size: 30,
                        color: ColorConstants.black,
                      ),
                      SizedBox(height: 5),
                      Text("PEDIATRIC", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 1.5,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "OUTSIDE CITY"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 30,
                        color: ColorConstants.black,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "OUTSIDE\n CITY",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 1.5,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "AIR AMBULANCE"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.local_airport,
                        size: 30,
                        color: ColorConstants.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        " AIR\n AMBULANCE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 1.5,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "PET"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.pets_sharp,
                        size: 30,
                        color: ColorConstants.black,
                      ),
                      SizedBox(height: 5),
                      Text(" PET", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 1.5,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () => showAmbulanceDialog(context, "WHEEL CHAIR"),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.wheelchair_pickup_outlined,
                        size: 30,
                        color: ColorConstants.black,
                      ),
                      SizedBox(height: 5),
                      Text(
                        " WHEEL CHAIR",
                        style: TextStyle(color: ColorConstants.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
