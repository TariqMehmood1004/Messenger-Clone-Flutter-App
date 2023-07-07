

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:messenger/colors/colors.dart';
import 'package:messenger/screens/home_screen/calls_screen.dart';
import 'package:messenger/screens/home_screen/chat_screen.dart';
import 'package:messenger/screens/home_screen/people_screen.dart';
import 'package:messenger/widgets/statusbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    MyWidgets().statusBar(AppColors.transparent);
  }

  List pages = [
    const ChatRoomScreen(),

    const CallsChatScreen(),

    const PeopleStoryScreen(),
  ];
  int currentPageIndex = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.white,
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: AppColors.white,
        //   automaticallyImplyLeading: true,
        //   title: Row(
        //     children: [
        //       const IconContainer(icon: Icons.menu_outlined),
        //       Expanded(child: Text(
        //         "Chats",
        //         style: TextStyle(
        //           color: AppColors.black,
        //           fontSize: 25,
        //           fontWeight: FontWeight.w900,
        //         ),
        //       )),
        //       const IconContainer(icon: Icons.camera_alt),
        //       const IconContainer(icon: Icons.edit),
        //     ],
        //   ),
        // ),

        body: pages[currentPageIndex],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.blueAccent,
          unselectedItemColor: AppColors.greyColor,
          backgroundColor: AppColors.white,
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
          onTap: (i) {
            currentPageIndex = i;
            setState(() {
              isSelected = true;
            });
          },
          currentIndex: currentPageIndex,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.message, color: AppColors.greyColor,),),
            BottomNavigationBarItem(label: "Calls", icon: Icon(Icons.call, color: AppColors.greyColor,),),
            BottomNavigationBarItem(label: "People", icon: Icon(Icons.people, color: AppColors.greyColor,),),
          ],
        ),
      ),
    );
  }
}
