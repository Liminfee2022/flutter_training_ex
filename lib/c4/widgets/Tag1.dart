import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training_ex/utils/colors.dart';
import 'package:flutter_training_ex/utils/themes.dart';

class Tag1 extends StatelessWidget {
  final String image;
  final String title;
  final bool? isSvg;
  const Tag1({Key? key, required this.image, required this.title, this.isSvg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: MyColor.lightGreyColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey, width: 1),
      ) ,
      child: Row(
        children: [
          isSvg != null ? SvgPicture.asset(
               image,
               semanticsLabel: 'SVG Logo'
           ) : Image.asset(image, width: 34, height: 34,),
          const SizedBox(width: 16,),
          Text(title, style: CustomTextStyle.h3.copyWith(color: Colors.grey),),
        ],
      ),
    );
  }
}
