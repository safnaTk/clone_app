import 'package:clone_app/global_widgets/reusable_button.dart';
import 'package:clone_app/utils/constants/color_constants.dart';
import 'package:clone_app/view/login_screen/login_screen.dart';
import 'package:clone_app/view/verification_screen/verification_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
       //App bar
      appBar: AppBar(
        backgroundColor: ColorConstants.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: ColorConstants.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LogInScreen()),
            );
          },
        ),

        title: Text("DIAL4242", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      // body
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "SIGN UP",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Divider(color: ColorConstants.black, thickness: 1),
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
            TextFormField(
              decoration: InputDecoration(hintText: "YOUR MOBILE NO"),
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "PASSWORD (MIN 8 CHARS)"),
              obscureText: true,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Terms and Conditions",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                ),
                Checkbox(
                  value: isChecked,
                  checkColor: ColorConstants.white,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  activeColor: ColorConstants.darkteal,
                ),
              ],
            ),
            SizedBox(height: 20),
            ReusableButton(
              name: "NEXT",
              onButtonPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => VerificationScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
