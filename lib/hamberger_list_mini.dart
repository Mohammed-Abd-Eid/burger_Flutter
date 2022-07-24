import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HambergerlistMini extends StatefulWidget {
  const HambergerlistMini();

  @override
  _HambergerlistMiniState createState() => _HambergerlistMiniState();
}

class _HambergerlistMiniState extends State<HambergerlistMini> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    Widget becomImege = Container(
      height: 110,
      child: Image.asset("images/bacon-burger.png"),
    );
    Widget checkImege = Container(
      height: 80,
      child: Image.asset("images/check1.png"),
    );
    return Container(
      height: 150,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool revese = index.isEven;
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.only(
                        left: 20,
                        right: index == items ? 20 : 0,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 3,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        revese ? "Chicken Burger" : "Bacon Burger",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: revese ? 20 : 5,
                  left: revese ? 10 : 15,
                  child: GestureDetector(
                    onTap: () {},
                    child: revese ? checkImege : becomImege,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
