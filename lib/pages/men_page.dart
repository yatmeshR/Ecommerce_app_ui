// ignore_for_file: prefer_const_constructors



import 'package:fashion_app_ui/lists/arrival2_list.dart';
import 'package:fashion_app_ui/lists/arrival_list.dart';
import 'package:flutter/material.dart';

class MenPage extends StatefulWidget {
  const MenPage({Key? key}) : super(key: key);

  @override
  State<MenPage> createState() => _MenPageState();
}

class _MenPageState extends State<MenPage> {
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
            child: ArrivalList(),
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
            child:Arrival2List(),
          ),
    ]));
  }
}
