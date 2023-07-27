import 'package:fashion_app_ui/data/model.dart';
import 'package:fashion_app_ui/lists/size_box_list.dart';
import 'package:flutter/material.dart';



class DetailPage extends StatefulWidget {
  final Arrival item;

  DetailPage({required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool favButton = false;

  //Add items to wishlist
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


  //Add items to cart
  void addCart(Arrival product) {
    setState(() {
      cartItems.add(product);
    });

    showDialog(
        context: context,
        builder: (builder) => AlertDialog(
          title: Column(
            children: [
              Text("Added Sucessfully",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 4,),
              Text('Check your Cart',
                style: TextStyle(fontSize: 20,),)
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 460,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      image: DecorationImage(
                          image: AssetImage(widget.item.imagepath),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    left: 16,
                    top: 16,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey[200]
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                          )),
                    )),
                Positioned(
                    right: 25,
                    top: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey[200]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                            onTap: () {
                              addWish(widget.item);
                              favButton = !favButton;
                              setState(() {});

                            },
                            child: favButton
                                ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                                : Icon(Icons.favorite_border_rounded)),
                      ),
                    ),)
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange[900],
                          size: 22,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.item.rate.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.item.name,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Text(
                        'Lorem, ipsum dolor sit amet consectetur adipisicing \n elit. '
                             'Quas alias veniam tenetur possimus et quae!')
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(left: 25, right: 25, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Size',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizesBox()
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 12),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Prize : ',
                        style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                        Text(widget.item.prize.toStringAsFixed(2),
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        addCart(widget.item);
                      },
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.orange[900],
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Text('Add To cart',
                        style: TextStyle(fontSize: 22,
                        fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                      ),
                    )

                  ],
                ),
              ),
              )
            ],
          )
        ],
      )),
    );
  }
}
