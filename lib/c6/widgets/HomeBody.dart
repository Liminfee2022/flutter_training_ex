import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training_ex/c6/mockData.dart';
import 'package:flutter_training_ex/c6/widgets/CarouselWidget.dart';
import 'package:flutter_training_ex/c6/widgets/SearchWidget.dart';
import 'package:flutter_training_ex/routes.dart';
import 'package:flutter_training_ex/utils/colors.dart';
import 'package:flutter_training_ex/utils/themes.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
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
        child: SingleChildScrollView(
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
              CarouselWidget(
                  imageList: imageList,
                  height: width / 3,
                  width: width - 100,
                  viewportFraction: 0.74,
                onPress: () {
                  Navigator.pushNamed(context, RouteGenerator.c6S2);
                },
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
              CarouselWidget(
                  imageList: releaseList,
                  height: width / 1.8,
                  width: width / 2.75,
                  enlargeCenterPage: false,
                  viewportFraction: 0.4,
                onPress: () {
                    Navigator.pushNamed(context, RouteGenerator.c6S2);
                },
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
