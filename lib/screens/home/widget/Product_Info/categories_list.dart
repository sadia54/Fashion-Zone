import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/screen/home/home_screen.dart';

class Categorieslist extends StatelessWidget {
  final String title;
  const Categorieslist(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  'View All',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).primaryColor),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
