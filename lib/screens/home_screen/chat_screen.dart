import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../../widgets/icon_container.dart';
import '../../widgets/my_card.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({super.key});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  // final _searchController = TextEditingController();

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
              "Chats",
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
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 14, top: 6.0, bottom: 5.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 5, bottom: 15),
                  decoration: BoxDecoration(
                    color: AppColors.light,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_outlined),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: AppColors.offGreen,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      myCard(title: "Tariq Mehmood", isPositioned: true, imageUrl: "assets/images/tm.jpg"),
                      myCard(title: "Mehmood"),
                      myCard(title: "John"),
                      myCard(title: "Ali"),
                      myCard(title: "Hamza"),
                      myCard(title: "Iqrash"),
                      myCard(title: "Haider"),
                      myCard(title: "Zunain"),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.transparent,
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text(
                          "Tap 🖋 to send a message",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text(
                          "Tap 🤦 to find people",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }

}
