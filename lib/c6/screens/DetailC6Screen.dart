import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training_ex/c6/mockData.dart';
import 'package:flutter_training_ex/c6/model.dart';
import 'package:flutter_training_ex/c6/widgets/CustomAppBar.dart';
import 'package:flutter_training_ex/c6/widgets/SearchWidget.dart';
import 'package:flutter_training_ex/utils/colors.dart';
import 'package:flutter_training_ex/utils/themes.dart';

class DetailC6Screen extends StatefulWidget {
  const DetailC6Screen({Key? key}) : super(key: key);

  @override
  State<DetailC6Screen> createState() => _DetailC6ScreenState();
}

class _DetailC6ScreenState extends State<DetailC6Screen> {
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
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: 'Custom App Bar',
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
            child: SvgPicture.asset('assets/icons/Back.svg'),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF2B5876).withOpacity(0.8),
              const Color(0xFF4E4376).withOpacity(0.8),
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
      body: Container(
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
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hello, ',
                          style: CustomTextStyle.body4
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Jane!',
                          style:
                          CustomTextStyle.h4.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    SvgPicture.asset('assets/icons/bell.svg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: SearchWidget(),
              ),
              const SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text('Most Popular',
                    style: CustomTextStyle.h3.copyWith(color: Colors.white)),
              ),
              const SizedBox(
                height: 15,
              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Wrap(
                  spacing: 16,
                  direction: Axis.horizontal,
                  children: List.generate(
                    functionList.length,
                        (index) => Container(
                      width: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            HexColor.fromHex('#6B66A6').withOpacity(0.5),
                            HexColor.fromHex('#75D1DD').withOpacity(0.4)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          tileMode: TileMode.mirror,
                        ),
                        border: Border.all(
                            width: 1.0, color: Colors.white.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28, bottom: 14),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              functionList[index].getImage,
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Text(functionList[index].getName,
                                style: CustomTextStyle.body6
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text('Upcoming releases',
                    style: CustomTextStyle.h3.copyWith(color: Colors.white)),
              ),
              const SizedBox(
                height: 15,
              ),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
