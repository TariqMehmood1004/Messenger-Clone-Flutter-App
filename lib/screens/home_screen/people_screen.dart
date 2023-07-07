import 'package:flutter/material.dart';
import 'package:messenger/colors/colors.dart';
import 'package:messenger/widgets/icon_container.dart';

class PeopleStoryScreen extends StatefulWidget {
  const PeopleStoryScreen({super.key});

  @override
  State<PeopleStoryScreen> createState() => _PeopleStoryScreenState();
}

class _PeopleStoryScreenState extends State<PeopleStoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: true,
        title: Row(
          children: [
            const IconContainer(icon: Icons.menu_outlined),
            Expanded(
                child: Text(
                  "People",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                )),
            const IconContainer(icon: Icons.book),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3.0),
              margin: const EdgeInsets.only(top: 10.0, bottom: 30),
              width: double.infinity,
              height: 20,
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
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.transparent,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyButton(title: "Stories", isSelected: true,),
                  MyButton(title: "activity",),
                ],
              ),
            ),
            const SizedBox(height: 15.0,),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyCardProfile(imageUrl: "assets/images/tm.jpg",isPositioned: false,),
                    SizedBox(width: 15.0,),
                    MyCardProfile(imageUrl: "assets/images/u.png",isPositioned: true,),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyCardProfile(imageUrl: "assets/images/u3.png",isPositioned: true,),
                    SizedBox(width: 15.0,),
                    MyCardProfile(imageUrl: "assets/images/u2.png",isPositioned: true,),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyCardProfile(imageUrl: "assets/images/u4.png",isPositioned: true,),
                    SizedBox(width: 15.0,),
                    MyCardProfile(imageUrl: "assets/images/u5.png",isPositioned: true,),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyCardProfile(imageUrl: "assets/images/m.png",isPositioned: true,),
                    SizedBox(width: 15.0,),
                    MyCardProfile(imageUrl: "assets/images/m2.png",isPositioned: true,),
                  ],
                ),
                SizedBox(height: 15,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyCardProfile extends StatelessWidget {
  const MyCardProfile({
    super.key,
    required this.imageUrl,
    this.isPositioned = false,
  });
  final String? imageUrl;
  final bool isPositioned;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl!),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: AppColors.light,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: isPositioned ? CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.blueAccent,
                    foregroundColor: AppColors.blueAccent,
                    backgroundImage: const AssetImage("assets/images/u2.png"),
                  ) : const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(width: 15.0,),
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(12.0),
        //   child: Stack(
        //     children: [
        //       Container(
        //         width: 150,
        //         height: 200,
        //         decoration: BoxDecoration(
        //           color: AppColors.paletteColor1,
        //           borderRadius: BorderRadius.circular(12.0),
        //         ),
        //         child: const Image(
        //           fit: BoxFit.cover,
        //           image: AssetImage("assets/images/tm.jpg"),
        //         ),
        //       ),
        //       Positioned(
        //         top: 10,
        //         left: 10,
        //         child: Container(
        //           padding: const EdgeInsets.all(4.0),
        //           decoration: BoxDecoration(
        //             color: AppColors.light,
        //             borderRadius: BorderRadius.circular(100),
        //           ),
        //           child: CircleAvatar(
        //             radius: 16,
        //             backgroundColor: AppColors.blueAccent,
        //             foregroundColor: AppColors.blueAccent,
        //             backgroundImage: const AssetImage("assets/images/u2.png"),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.title,
    this.isSelected = false,
  });
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8.0),
      margin: const EdgeInsets.symmetric(horizontal: 5.0,),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.light : null,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
