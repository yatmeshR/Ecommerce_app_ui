import 'package:fashion_app_ui/data/kids_page_data.dart';
import 'package:fashion_app_ui/data/model.dart';
import 'package:fashion_app_ui/pages/details_page.dart';
import 'package:flutter/material.dart';

class KArrival2List extends StatefulWidget {
  @override
  State<KArrival2List> createState() => _KArrival2ListState();
}

class _KArrival2ListState extends State<KArrival2List> {


  //Add items in wishlist
  void addWish(Arrival product) {
    setState(() {
      wishItems.add(product);
    });

    showDialog(
        context: context,
        builder: (builder) => AlertDialog(
          title: Text("Added Sucessfully"),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products5.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) {
          final product = products5[index];
          return Container(
            margin: EdgeInsets.only(left: 10),
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(14),
            ),

            child : Column(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(products5[index].imagepath,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange[900],size: 22,),
                            SizedBox(width: 5,),
                            Text(products4[index].rate.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                          ),
                        ),
                        child: IconButton(onPressed: () {addWish(products5[index]);},
                            icon: Icon(Icons.favorite_border_rounded)),
                      ),
                    )
                  ],

                ),

                SizedBox(height: 5),

                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //  name
                          Text(products5[index].name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),

                          //  prize
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rs " + products5[index].prize.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange[900],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(14),
                                        bottomRight: Radius.circular(14))
                                ),
                                child: IconButton(onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              DetailPage(item: product,)));
                                },
                                  icon: Icon(Icons.add),
                                  color: Colors.white,
                                  iconSize: 30,),
                              )
                            ],
                          )
                          //  add to cart
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );

        }

    );

  }
}
