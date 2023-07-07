// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messenger/colors/colors.dart';

import '../../widgets/icon_container.dart';

class CallsChatScreen extends StatefulWidget {
  const CallsChatScreen({super.key});

  @override
  State<CallsChatScreen> createState() => _CallsChatScreenState();
}

class _CallsChatScreenState extends State<CallsChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 1,
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: true,
        flexibleSpace: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(3.0),
          margin: const EdgeInsets.only(top: 65.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.transparent,
            border: Border.all(
              color: AppColors.transparent,
              width: 0,
            ),
          ),
          child: const Text(
            "Connecting...",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        title: Column(
          children: [
            Row(
              children: [
                const IconContainer(icon: Icons.menu_outlined),
                Expanded(
                    child: Text(
                  "Calls",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                )),
                const IconContainer(icon: Icons.camera_alt),
                const IconContainer(icon: Icons.edit),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "No calls",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Recent calls will appear here.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    decoration: BoxDecoration(
                      color: AppColors.blueAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "START A CALL",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Suggestions",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  mySuggestions(profileName: "Tariq Mehmood", imageUrl: "assets/images/tm.jpg"),
                  mySuggestions(profileName: "Tariq Mehmood", imageUrl: "assets/images/u.png"),
                  mySuggestions(profileName: "Iqrash Jalil", imageUrl: "assets/images/u2.png"),
                  mySuggestions(profileName: "Muhammad Muddassar Gujjar", imageUrl: "assets/images/u3.png"),
                  mySuggestions(profileName: "Safi-Ullah Khan", imageUrl: "assets/images/u4.png"),
                  mySuggestions(profileName: "Ali Haider",),
                  mySuggestions(profileName: "Muhammad Hamza",),
                  mySuggestions(profileName: "Muhammad Irfan",),
                  mySuggestions(profileName: "Irfan",),
                  mySuggestions(profileName: "Muhammad",),
                  mySuggestions(profileName: "Aryan",),
                  mySuggestions(profileName: "Eman",),
                  mySuggestions(profileName: "Ilyan",),
                  mySuggestions(profileName: "Awais Ahmad",),
                  mySuggestions(profileName: "Ahmad Ali",),
                  mySuggestions(profileName: "Muhammad Irfan",),
                  mySuggestions(profileName: "Muhammad Irfan",),
                  mySuggestions(profileName: "Muhammad Irfan",),
                  mySuggestions(profileName: "Muhammad Irfan",),
                  mySuggestions(profileName: "Muhammad Irfan",),
                  mySuggestions(profileName: "Muhammad Irfan",),
                  mySuggestions(profileName: "Muhammad Irfan",),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container mySuggestions({String? profileName, String imageUrl = "assets/images/user.png"}) {
    return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(6.0),
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(imageUrl),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          profileName!,
                          style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      IconContainer(icon: Icons.call),
                      IconContainer(icon: Icons.video_call),
                    ],
                  ),
                );
  }
}
