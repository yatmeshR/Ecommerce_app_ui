import 'package:flutter/cupertino.dart';

class MyTab extends StatelessWidget {
  final String name;

  MyTab({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Text(name,
          style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
