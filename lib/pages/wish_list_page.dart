import 'package:fashion_app_ui/data/model.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatefulWidget {



  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {

  void removeWish(Arrival product) {
    setState(() {
      wishItems.remove(product);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
          ),
          child: IconButton(onPressed: () {
            Navigator.pop(context);
          }
              , icon: Icon(Icons.arrow_back_ios_new_outlined, size: 28)),
        ),
        title: Text('WishList',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: wishItems.length,
          itemBuilder: (context, index) {
            final product = wishItems[index];
            return Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ListTile(
                    title: Image.asset(product.imagepath,
                      height: 100,),
                    subtitle: Column(
                      children: [
                        Text(product.name,
                          style: TextStyle(
                              fontSize: 20
                          ),),
                        SizedBox(height: 8,),
                        Text("Rs" +" " +  product.prize.toString(),
                          style: TextStyle(
                            fontSize: 18,
                          ),),
                      ],
                    ),
                    trailing: IconButton(onPressed: () {
                      removeWish(product);
                    },
                        icon: Icon(Icons.delete,size: 28,color: Colors.orange[900],)) ,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
