class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  final detailUrl2;
  List<String> detailUrl;

  Clothes(this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl,
      this.detailUrl2);
  static List<Clothes> generateClothes() {
    return [
      Clothes(
          "Ladies Winter Clothes",
          ' Coat',
          "\$89.59",
          "assets/Girls_Zone/1.3.png",
          ["assets/Girls_Zone/1.3.png", 'assets/Girls_Zone/1.2.png', "assets/Girls_Zone/1.3.png"],
          "assets/Top_Pic/t1.jpg"),
      Clothes(
          'Winter Clothes',
          " Huddy",
          "\$129.59",
          "assets/Boys_Zone/2.1.png",
          ["assets/Boys_Zone/2.1.png", "assets/Girls_Zone/2.2.png", 'assets/Boys_Zone/2.3.png'],
          "assets/Top_Pic/t2.jpg"),
      Clothes(
          'Winter Clothes',
          " For Children",
          "\$129.59",
          "assets/Childrens_Zone/5.png",
          ["assets/Childrens_Zone/5.png", "assets/Childrens_Zone/5.1.png", "assets/Childrens_Zone/5.2.png"],
          "assets/Top_Pic/t3.jpg"),
      Clothes("Man-Woman Clothes", ' Coat', "\$89.59", "assets/10.png",
          ['assets/Boys_Zone/10.png', "assets/Girls_Zone/10.1.png"], "assets/Top_Pic/t1.jpg"),
      Clothes("Baby Girl ", ' Dresses', "\$89.59", "assets/Childrens_Zone/4.png",
          ['assets/Childrens_Zone/4.png', "assets/6.png"], "aassets/Top_Pic/t1.jpg"),
    ];
  }
}
