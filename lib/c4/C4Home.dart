import 'package:flutter/material.dart';
import 'package:flutter_training_ex/c4/widgets/Tag1.dart';
import 'package:flutter_training_ex/c4/widgets/Tag2.dart';
import 'package:flutter_training_ex/c4/widgets/VideoPlayerView.dart';
import 'package:flutter_training_ex/c4/widgets/YoutubePlayerView.dart';
import 'package:flutter_training_ex/utils/themes.dart';
import 'package:video_player/video_player.dart';

class C4Home extends StatelessWidget {
  const C4Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 4'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                Text('IMAGE',
                    style: CustomTextStyle.h3.copyWith(color: Colors.black)),
                const SizedBox(
                  height: 8,
                ),
                const Tag1(image: 'assets/images/FAQ.png', title: 'FAQ'),
                const SizedBox(
                  height: 16,
                ),
                const Tag1(
                    image: 'assets/images/Group.png', title: 'Contact Us'),
                const SizedBox(
                  height: 16,
                ),
                const Tag1(
                    image: 'assets/images/terms.png',
                    title: 'Term & Conditions'),
                const SizedBox(
                  height: 24,
                ),
                Text('AVATAR IMAGE',
                    style: CustomTextStyle.h3.copyWith(color: Colors.black)),
                const SizedBox(
                  height: 8,
                ),
                const Tag2(
                  image:
                      'https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png',
                  title: '@airplanes45',
                  subTitle: 'Michel Open',
                ),
                const SizedBox(
                  height: 16,
                ),
                Text('SVG',
                    style: CustomTextStyle.h3.copyWith(color: Colors.black)),
                const SizedBox(
                  height: 8,
                ),
                const Tag1(
                    isSvg: true, image: 'assets/icons/FAQ.svg', title: 'FAQ'),
                const SizedBox(
                  height: 16,
                ),
                const Tag1(
                    isSvg: true,
                    image: 'assets/icons/Contact.svg',
                    title: 'Contact Us'),
                const SizedBox(
                  height: 16,
                ),
                const Tag1(
                    isSvg: true,
                    image: 'assets/icons/terms.svg',
                    title: 'Term & Conditions'),
                const SizedBox(
                  height: 24,
                ),
                Text('VIDEO',
                    style: CustomTextStyle.h3.copyWith(color: Colors.black)),
                const SizedBox(
                  height: 8,
                ),
                const VideoPlayerView(
                  url: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                  dataSourceType: DataSourceType.network,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text('YOUTUBE VIDEO',
                    style: CustomTextStyle.h3.copyWith(color: Colors.black)),
                const SizedBox(
                  height: 8,
                ),
                const YoutubePlayerView(url: 'https://www.youtube.com/watch?v=YBRkVCRP1Gw',),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
