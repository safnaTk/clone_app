import 'package:clone_app/utils/constants/image_constants.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image.asset(
            //   // ImageConstants.aboutsimage,
            //   fit: BoxFit.cover,
            //   width: double.infinity,
            // ),
          ],
        ),
      ),
    );
  }
}
