// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, sort_child_properties_last, library_private_types_in_public_api, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'burger_page.dart';

class HambergerList extends StatefulWidget {
  final int row;

  HambergerList({required this.row});

  @override
  _HambergerListState createState() => _HambergerListState();
}

class _HambergerListState extends State<HambergerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    Widget becomImege = Container(
      height: 160,
      child: Image.asset("images/bacon-burger.png"),
    );
    Widget checkImege = Container(
      height: 140,
      child: Image.asset("images/check1.png"),
    );
    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 320 : 240,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: EdgeInsets.only(right: index == 0 ? 20 : 0, left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        BurgerPage.tag,
                        arguments: reverse ? "Chicken Burger" : "Bacon Burger",
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reverse ? "Chicken Burger" : "Bacon Burger",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "15.95 \$ CAN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.teal,
                                      size: 25,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 60 : 50,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        BurgerPage.tag,
                        arguments: reverse ? "Chicken Burger" : "Bacon Burger",
                      );
                    },
                    child: reverse ? checkImege : becomImege,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
