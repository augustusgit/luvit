import 'package:flutter/material.dart';

import '../widget/bottom_navigation.dart';
import '../widget/profile_card.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {

  final ScrollController _controller = ScrollController();
  int activeIndex = 0;

  final List<Map<String, dynamic>> _livePages = [
    {
      'image': ['assets/images/user1.png', 'assets/images/user2.png', 'assets/images/user3.png'],
    },
    {
      'image': ['assets/images/user1.png', 'assets/images/user2.png', 'assets/images/user3.png'],

    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/icons/btcon.png",
          ),
        ),
        title: const Text("목이길어슬픈기린님의 새로운 스팟", style: TextStyle(fontSize: 12),),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/star.png",
                height: 20,
                width: 20,
              )),
          const Text("323,233", style: TextStyle(fontSize: 12),),

          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/bell.png",
                height: 30,
                width: 30,
              )),
        ],
      ),
      body: ProfileCard(images: _livePages[0]["image"],),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
