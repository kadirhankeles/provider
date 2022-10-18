import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'item.dart';

class sepetScreen extends StatefulWidget {
  const sepetScreen({super.key});

  @override
  State<sepetScreen> createState() => _sepetScreenState();
}

class _sepetScreenState extends State<sepetScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, Item item, widget){
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              
              SizedBox(height: 10,),
              Container(
                 height: 80.h,
            width: 100.w,
           
                child:  item.sepet!.isEmpty? Center(child: Text("Sepetiniz Boş", style: TextStyle(fontWeight: FontWeight.bold),)):
                ListView.builder(itemCount: item.sepet!.length,itemBuilder: (context, index) {
                  return Container(
                     color: Colors.blue,
                     width: 100.w,
                     height: 8.h,
                     margin: EdgeInsets.only(bottom: 1.h),
                     padding: EdgeInsets.only(right: 3.w, left: 3.w),
                     child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.network("${item.sepet![index]["image"]}", fit: BoxFit.cover, width: 60,),
                  ),
                  Text("${item.sepet![index]["title"]}",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("${item.sepet![index]["price"]} "r"$",style: TextStyle(fontWeight: FontWeight.bold), ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        
                      });
                      item.decrease();
                      item.deleteSepet(index);
                    },
                    child: Container(
                    width: 4.h,
                    height: 4.h,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(.7.h)),
                    child: Icon(Icons.close),
                                  ),
                  )
                ],
              ),
                  );
                },),
              ),
              Text("Ürün Miktarı: ${item.cartCounts}"),
              IconButton(onPressed: () {
                item.reset();
              }, icon: Icon(Icons.refresh_sharp))
              
            ],
          ),
        ),
      );
    });
  }
}