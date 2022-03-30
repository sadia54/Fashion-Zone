import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TopPic extends StatefulWidget {
  @override
  State<TopPic> createState() => _TopPicState();
}

class _TopPicState extends State<TopPic> {
  @override
  final CarouselController _controller = CarouselController();
  int _currentPage = 0;
  int _currentColor = 0;
  Widget build(BuildContext context) {
    final images = [
      "assets/Top_Pic/t1.jpg",
      "assets/Top_Pic/t2.jpg",
      "assets/Top_Pic/t3.jpg",
      "assets/Top_Pic/t4.jpg",
      "assets/Top_Pic/t5.jpg",
      "assets/Top_Pic/t6.jpg",
      "assets/Top_Pic/t7.jpg",
    ];

    return Column(
      children: [
        Container(
            child: CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              disableCenter: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(milliseconds: 400),
              height: 200,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                });
              }),
          items: images
              .map((e) => Builder(
                    builder: (BuildContext) => Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              "$e",
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                          color: Theme.of(context).primaryColor,
                        )),
                  ))
              .toList(),
        )),
        Positioned(
            bottom: 30,
            left: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images
                  .asMap()
                  .entries
                  .map((Entry) => GestureDetector(
                        onTap: () => _controller.animateToPage(Entry.key),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(
                                  _currentPage == Entry.key ? 0.7 : 0.10)),
                        ),
                      ))
                  .toList(),
            )),
      ],
    );
  }
}
