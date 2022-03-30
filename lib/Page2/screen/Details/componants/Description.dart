import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Childrens_Zone/product3.dart';
import 'package:flutter_shop_2/Page2/models/componenta/All_Items/product4.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    this.product,
   
  }) : super(key: key);

  final Product product;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}

class Description2 extends StatelessWidget {
  const Description2({
    Key key,
    this.product2,
    this.product3,
    this.product4,
  }) : super(key: key);

  final Product2 product2;
  final Product3 product3;
  final Product4 product4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin),
      child: Text(
        product2.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
class Description3 extends StatelessWidget {
  const Description3({
    Key key,
    
    this.product3,
    
  }) : super(key: key);

  
  final Product3 product3;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin),
      child: Text(
        product3.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
class Description4 extends StatelessWidget {
  const Description4({
    Key key,
    
    this.product4,
  }) : super(key: key);

  
  final Product4 product4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin),
      child: Text(
        product4.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}