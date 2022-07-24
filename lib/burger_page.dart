// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, sort_child_properties_last, library_private_types_in_public_api, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hamberger_list_mini.dart';

class BurgerPage extends StatefulWidget {
  static const tag = "Burger_page";
  final int row;

  const BurgerPage(  this.row);

  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  Widget becomImege = Container(
    height: 160,
    child: Image.asset("images/bacon-burger.png"),
  );
  Widget checkImege = Container(
    height: 140,
    child: Image.asset("images/check1.png"),
  );
  int number = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    dynamic nameArgument = ModalRoute.of(context)!.settings.arguments as Object;
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 18,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/user_photo.png"),
                  radius: 16,
                ),
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameArgument,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Deliver Me BURGER, Fast Delivery &Great Service!",
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    nameArgument == "Chicken Burger" ? checkImege : becomImege,
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Text(
                            "15,94 \$ CAN",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star, size: 25, color: Colors.white),
                              Icon(Icons.star, size: 25, color: Colors.white),
                              Icon(Icons.star, size: 25, color: Colors.white),
                              Icon(Icons.star, size: 25, color: Colors.white),
                              Icon(Icons.star, size: 25, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(45),
          ),
        ),
        onClosing: () {},
        builder: (context) {
          return ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(45),
            ),
            child: Container(
              width: size.width,
              height: size.height / 1.6,
              color: Color.fromRGBO(240, 240, 240, 1),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 28),
                        Text(
                          "Created custom mobile applications using native technologiesManaged all aspects of Android app lifecycle from research and planning through deployment and post-launch support.",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  HambergerlistMini(),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove_circle),
                              onPressed: () {
                                setState(() {
                                  number = number - 1;
                                });
                              },
                              color: Colors.orangeAccent,
                            ),
                            Text(number.toString()),
                            IconButton(
                              icon: Icon(Icons.add_circle),
                              onPressed: () {
                                setState(() {
                                  number = number + 1;
                                });
                              },
                              color: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 45,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45)),
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
