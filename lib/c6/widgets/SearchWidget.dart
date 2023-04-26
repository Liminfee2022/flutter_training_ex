import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training_ex/utils/colors.dart';
import 'package:flutter_training_ex/utils/themes.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [HexColor.fromHex('#6B66A6').withOpacity(0.5), HexColor.fromHex('#75D1DD').withOpacity(0.4)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          tileMode: TileMode.mirror,
        ),
        border: Border.all(width: 1.0, color: Colors.white.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/Search.svg'),
              const SizedBox(width: 10,),
              Text('Search', style: CustomTextStyle.body3.copyWith(color: Colors.white.withOpacity(0.5))),
            ],
          ),
          const Spacer(),
          Container(
            width: 1.0,
            height: 40,
            color: Colors.white.withOpacity(0.6),
          ),
          const SizedBox(width: 10,),
          SvgPicture.asset('assets/icons/Voice.svg'),
        ],
      ),
    );
  }
}
