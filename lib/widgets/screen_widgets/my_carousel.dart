import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      items: [
        Image.asset(AppMedia.banner1, fit: BoxFit.fill,),
        Image.asset(AppMedia.banner2, fit: BoxFit.fill,),
        Image.asset(AppMedia.banner3, fit: BoxFit.fill,)
      ],
      options: FlutterCarouselOptions(
        height: Utils.setHeight(context, 1),
        viewportFraction: 1.0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        slideIndicator: CircularSlideIndicator(
          slideIndicatorOptions: const SlideIndicatorOptions(
            currentIndicatorColor: Color(0xff53B175),
            itemSpacing: 10,
            indicatorRadius: 3,
          )
        )
      )
    );
  }
}
