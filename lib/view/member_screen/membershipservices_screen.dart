import 'package:clone_app/utils/constants/color_constants.dart';
import 'package:clone_app/view/home_screen/home_screen.dart';
import 'package:clone_app/view/member_screen/member_screen.dart';
import 'package:clone_app/view/member_screen/membership_screen.dart';
import 'package:flutter/material.dart';

class MembershipServicesScreen extends StatelessWidget {
  const MembershipServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.blue,
        title: Text(
          "D I A L 4 2 4 2",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorConstants.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: ColorConstants.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MemberScreen()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Membership Services",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorConstants.black,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              color: ColorConstants.blue,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),

                  Text(
                    "On demand service",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "You pay when you use the service",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Membership fee guarantees you the ambulance when you need one",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "24x7 call center support",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "ALS, BLS, Pediatric and deadbody ambulances are part of the membership",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Additional discounts for members when they use the ambulance",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "List of cities where service is provided is available at",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 10),
                    child: Text(
                      "https://www.dial4242.com/cities",
                      style: TextStyle(
                        color: Colors.blue.shade700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),

                  Text(
                    "Committed service provided within city",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Best efforts to provide the Ambulance for out-stations and no discounts on outstation trips",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Detailed T&C are available at",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MembershipScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.darkteal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      "ACCEPT",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.darkteal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      "DECLINE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
