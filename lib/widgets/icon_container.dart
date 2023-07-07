
import 'package:flutter/material.dart';
import 'package:messenger/colors/colors.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: AppColors.buttonColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Icon(icon, color: AppColors.black, size: 20,),
    );
  }
}
