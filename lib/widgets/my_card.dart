
import 'package:flutter/material.dart';

import '../colors/colors.dart';

Container myCard({String? title, String imageUrl = "assets/images/user.png", bool isPositioned = false}) {
  return Container(
      alignment: Alignment.center,
      width: 97,
      height: 133,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Stack(
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 33,
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(height: 10,),
              Text(
                isPositioned ? "Leave a note " : title!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.black.withOpacity(0.7),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),

          isPositioned ?
            Positioned(
              top: 65,
              right: -25,
              child: Container(
                margin: const EdgeInsets.only(right: 35,),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: AppColors.white,
                    width: 1.5,
                  ),
                ),
                child: Icon(Icons.add_outlined, size: 17.5, color: AppColors.greyColor,),
              ),
            )
          :
          Positioned(
            top: 65,
            right: -25,
            child: Container(
              margin: const EdgeInsets.only(right: 35,),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: AppColors.white,
                  width: 1.5,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: AppColors.blueAccent,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: AppColors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
  );
}