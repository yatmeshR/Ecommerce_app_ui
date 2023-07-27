


import 'package:fashion_app_ui/lists/warrival2_list.dart';
import 'package:fashion_app_ui/lists/warrival_list.dart';
import 'package:flutter/material.dart';

class WomenPage extends StatefulWidget {
  const WomenPage({Key? key}) : super(key: key);

  @override
  State<WomenPage> createState() => _WomenPageState();
}

class _WomenPageState extends State<WomenPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Arrival',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                // ElevatedButton(onPressed: () {},
                //     child: Text('See  All'))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          SizedBox(
            height: 320,
            child: WArrivalList(),
          ),

          SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                // ElevatedButton(onPressed: () {},
                //     child: Text('See  All'))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          SizedBox(
            height: 320,
            child: WArrival2List(),
          ),
        ]));
  }
}
