import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:providerlesson/sepet.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'item.dart';

class productScreen extends StatefulWidget {
  const productScreen({super.key});

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, Item item, widget) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Sepetteki Ürün  |  ${item.cartCounts} "),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80.h,
            width: 100.w,
          
         child: ListView.builder(itemCount: 5,itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              width: 100.w,
              height: 8.h,
              margin: EdgeInsets.only(bottom: 1.h),
              padding: EdgeInsets.only(right: 3.w, left: 3.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ürün"),
                  InkWell(
                    onTap: () {
                      item.increase();
                    },
                    child: Container(
                    width: 4.h,
                    height: 4.h,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(.7.h)),
                    child: Icon(Icons.add_shopping_cart_rounded),
                                  ),
                  )
                ],
              ),
            );
          },)),
          Container(
           
            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => sepetScreen()));
            }, child: Text("Sepete Git", style: TextStyle(color: Colors.white),),),
          )
        ],
      ),
    );
    });
  }
}