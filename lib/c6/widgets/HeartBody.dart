import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training_ex/c6/model.dart';
import 'package:flutter_training_ex/c6/widgets/CarouselWidget.dart';
import 'package:flutter_training_ex/c6/widgets/SearchWidget.dart';
import 'package:flutter_training_ex/utils/colors.dart';
import 'package:flutter_training_ex/utils/themes.dart';

class HeartBody extends StatefulWidget {
  const HeartBody({Key? key}) : super(key: key);

  @override
  State<HeartBody> createState() => _HeartBodyState();
}

class _HeartBodyState extends State<HeartBody> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 18,
            ),
           Text('heart', style: CustomTextStyle.h3.copyWith(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
