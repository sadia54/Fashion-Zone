import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Childrens_Zone/product3.dart';
import 'package:flutter_shop_2/Page2/models/componenta/All_Items/product4.dart';
import 'package:flutter_shop_2/screens/detail/widget/Color_Picker.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    this.product,
    this.product2,
    this.product3,
    this.product4,
  }) : super(key: key);

  final Product product;
  final Product2 product2;
  final Product3 product3;
  final Product4 product4;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [ColorDot()],
              ),
            ],
          ),
        ),
        // Expanded(
        //   child: RichText(
        //       text: TextSpan(style: TextStyle(color: kTextColor), children: [
        //     TextSpan(text: "Size\n"),
        //     TextSpan(
        //         text: "${product.size} cm",
        //         style: Theme.of(context).textTheme.headline5.copyWith(
        //               fontWeight: FontWeight.bold,
        //             ))
        //   ])),
        // )
      ],
    );
  }
}

class ColorDot extends StatefulWidget {
  final Color color;
  // final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    // this.isSelected = false,
  }) : super(key: key);

  @override
  State<ColorDot> createState() => _ColorDotState();
}

class _ColorDotState extends State<ColorDot> {
  final List<Color> colors = [
    Color(0xFFE6CFC6),
    Color(0xFFEEDFB5),
    Color(0xFFCAE2C5),
    Color(0xFFBAE6EE),
  ];
  int _currentColor = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 30,
      child: Container(
        height: 50,
        width: 175,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30)),
        child: ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (
              context,
              index,
            ) =>
                GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentColor = index;
                      });
                    },
                    child: ColorPicker(_currentColor == index, colors[index])),
            separatorBuilder: (_, index) => SizedBox(
                  height: 3,
                ),
            itemCount: colors.length),
      ),

      // margin: EdgeInsets.only(
      //   top: kDefaultpaddin / 4,
      //   right: kDefaultpaddin / 2,
      // ),
      // padding: EdgeInsets.all(2.5),
      // height: 24,
      // width: 24,
      // decoration: BoxDecoration(
      //   shape: BoxShape.circle,
      //   border: Border.all(
      //     color: widget.isSelected ? widget.color : Colors.transparent,
      //   ),
      // ),
      // child: DecoratedBox(
      //     decoration: BoxDecoration(
      //   color: widget.color,
      //   shape: BoxShape.circle,
      // )),
    );
  }
}
