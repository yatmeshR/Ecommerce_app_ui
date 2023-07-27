import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List categories = ['For Men', 'For Women', 'For Kids'];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentindex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:
                      currentindex == index ? Colors.orange[900] : Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        fontSize: 20,
                        color:
                            currentindex == index ? Colors.white : Colors.black,
                        fontWeight: currentindex == index
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
