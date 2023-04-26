import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveIcon extends StatelessWidget {
  final String image;
  final double? dotSize;
  const ActiveIcon({Key? key, required this.image, this.dotSize = 7}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image,
            color: Colors.white),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: dotSize,
          width: dotSize,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(dotSize ?? 7 /2),
          ),
        ),
      ],
    );
  }
}
