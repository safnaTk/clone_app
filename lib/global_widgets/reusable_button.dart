import 'package:clone_app/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String name;
  final void Function()? onButtonPressed;
  const ReusableButton({
    super.key,
    required this.name,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onButtonPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          backgroundColor: ColorConstants.darkteal,
        ),

        child: Text(
          name,
          style: TextStyle(
            color: ColorConstants.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
