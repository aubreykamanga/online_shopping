import 'package:flutter/material.dart';
import 'package:online_shopping/constants.dart';

// we need stateful widget because we are going to change some state on our category
class Categorylist extends StatefulWidget {
  const Categorylist({super.key});

  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  // by default First item will be selecte
  int selectedIndex = 0;
  List categories = [
    'All',
    'Sofa',
    'bench',
    'Arm Chair',
    "Phones",
    "Plasma Screen",
    "Laptops"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: (() {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: kDefaultPadding,
                    //At the end of item it add 20 right padding
                    right: index == categories.length - 1 ? kDefaultPadding : 0,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? Colors.white.withOpacity(0.4)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    categories[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )),
    );
  }
}
