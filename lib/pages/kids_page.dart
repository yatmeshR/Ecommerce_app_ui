import 'package:fashion_app_ui/lists/k_arraival_list.dart';
import 'package:fashion_app_ui/lists/k_arrival2_list.dart';
import 'package:flutter/material.dart';

class KidsPage extends StatefulWidget {
  const KidsPage({Key? key}) : super(key: key);

  @override
  State<KidsPage> createState() => _KidsPageState();
}

class _KidsPageState extends State<KidsPage> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
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
            child: KArrivalList(),
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
            child:KArrival2List(),
          ),
        ]));
  }
}
