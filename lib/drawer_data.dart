

import 'package:fashion_app_ui/pages/cart_page.dart';
import 'package:fashion_app_ui/pages/wish_list_page.dart';
import 'package:flutter/material.dart';

class DrawerData extends StatelessWidget {
  const DrawerData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Hello,',
                            style: TextStyle(
                                fontSize: 20
                            ),),
                          SizedBox(width:2 ),
                          Text('Sky',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                      CircleAvatar(
                        foregroundImage: AssetImage('images/profile.jpg'),
                        radius: 26,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => CartPage()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_cart_outlined,
                      size: 26,
                    ),
                    title: Text(
                      'Cart',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => WishListPage(

                            )));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite_border_rounded,
                      size: 26,
                    ),
                    title: Text(
                      'Your List',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                GestureDetector(
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_bag_outlined,
                      size: 26,
                    ),
                    title: Text(
                      'Your Order',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18 ,
            vertical: 20),
            child: Row(
              children: [
                Icon(Icons.logout_rounded,
                size: 26,),
                SizedBox(width: 10,),
                Text(
                  'Log Out',
                  style: TextStyle(fontSize: 20),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
