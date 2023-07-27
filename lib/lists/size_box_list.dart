import 'package:flutter/material.dart';

class SizesBox extends StatefulWidget {
  const SizesBox({Key? key}) : super(key: key);

  @override
  State<SizesBox> createState() => _SizesBoxState();
}

class _SizesBoxState extends State<SizesBox> {

  int activeMenu = 0;
  List<Select> types = [
    Select('XS'),
    Select('S'),
    Select('M'),
    Select('L'),
    Select('Xl'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: types.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeMenu = index;
                });

              },
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 14),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: activeMenu == index
                        ? Colors.orange[900]
                        : Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(
                    types[index].name,
                    style: TextStyle(
                      fontSize: 20,
                      color: activeMenu == index
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}


class Select {
  final String name;

  Select(this.name);
}
