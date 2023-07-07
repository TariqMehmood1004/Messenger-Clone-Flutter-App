import 'dart:async';

import 'package:flutter/material.dart';
import 'package:messenger/colors/colors.dart';
import 'package:messenger/widgets/statusbar_widget.dart';

import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final myWidget = MyWidgets();

  @override
  void initState() {
    super.initState();

    myWidget.statusBar(AppColors.white);

    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
          MaterialPageRoute(builder: (context) => const HomeScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
           alignment: Alignment.bottomCenter,
           width: double.infinity,
           height: MediaQuery.of(context).size.height * 0.5,
           color: AppColors.white,
           child:  const Image(
             width: 100,
             height: 108,
             image: AssetImage(
                 "assets/images/m.png"
             ),
           ),
         ),
          Padding(padding: const EdgeInsets.only(bottom: 50),
            child: Text(
            "From Meta",
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          ),
        ],
      ),
    );
  }
}



