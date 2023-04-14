import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_ex/utils/colors.dart';
import 'package:flutter_training_ex/utils/themes.dart';

class Tag2 extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const Tag2({Key? key, required this.image, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: MyColor.lightGreyColor, width: 1),
      ),
      child: Row(
        children: [
          ClipOval(
            child: CachedNetworkImage(
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              imageUrl: image,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: CustomTextStyle.h3.copyWith(color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subTitle,
                  style: CustomTextStyle.h5.copyWith(color: Colors.deepOrangeAccent),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
