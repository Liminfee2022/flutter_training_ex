import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training_ex/c6/model.dart';
import 'package:flutter_training_ex/utils/themes.dart';

class CarouselWidget extends StatefulWidget {
  final List<carousel> imageList;
  final double height;
  final double width;
  final bool? enlargeCenterPage;
  final double viewportFraction;
  final VoidCallback onPress;
  const CarouselWidget({Key? key, required this.imageList, required this.height, required this.width, this.enlargeCenterPage = true, required this.viewportFraction, required this.onPress}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int carouselIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
              enlargeCenterPage: widget.enlargeCenterPage,
              enableInfiniteScroll: false,
              height: widget.height,
              viewportFraction: widget.viewportFraction,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  carouselIndex = index;
                });
              }),
          itemCount: widget.imageList.length,
          itemBuilder: (context, index, realIndex) {
            final e = widget.imageList[index];
            return GestureDetector(
              onTap: widget.onPress,
              child: Container(
                width: widget.width,
                decoration: BoxDecoration(
                  color: carouselIndex == index ? Colors.white : Colors.red,
                  image: DecorationImage(
                    image: AssetImage('${e.getImage}'),
                    colorFilter: carouselIndex == index
                        ? null
                        : ColorFilter.mode(
                            Colors.white.withOpacity(0.3),
                            BlendMode.lighten,
                          ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: e.getImdb != '' || e.getName != ''
                    ? Stack(
                        children: [
                          Positioned(
                            bottom: 10,
                            left: 16,
                            right: 16,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${e.getName}",
                                    style: CustomTextStyle.h4
                                        .copyWith(color: Colors.white)),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset('assets/icons/IMDb.svg'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text('${e.getImdb}',
                                          style: CustomTextStyle.body5
                                              .copyWith(color: Colors.black)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : null,
              ),
            );
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < widget.imageList.length; i++)
              Container(
                height: 10,
                width: 10,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: carouselIndex == i
                        ? [
                            const Color(0xFF6B66A6),
                            const Color(0xFF75D1DD),
                          ]
                        : [
                            const Color(0xFF6B66A6).withOpacity(0.5),
                            const Color(0xFF75D1DD).withOpacity(0.5),
                          ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    tileMode: TileMode.mirror,
                  ),
                  shape: BoxShape.circle,
                ),
              )
          ],
        ),
      ],
    );
  }
}
