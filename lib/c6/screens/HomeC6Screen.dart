import 'package:flutter/material.dart';
import 'package:flutter_training_ex/c6/model.dart';
import 'package:flutter_training_ex/c6/widgets/HeartBody.dart';
import 'package:flutter_training_ex/c6/widgets/HomeBody.dart';

class HomeC6Screen extends StatefulWidget {
  const HomeC6Screen({Key? key}) : super(key: key);

  @override
  State<HomeC6Screen> createState() => _HomeC6ScreenState();
}

class _HomeC6ScreenState extends State<HomeC6Screen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2B5876),
              Color(0xFF4E4376),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            tileMode: TileMode.mirror,
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.transparent,
          onTap: onTapped,
          items: items,
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeBody(),
          HeartBody(),
          HeartBody(),
          HeartBody(),
          HeartBody(),
        ],
      ),
    );
  }
}
