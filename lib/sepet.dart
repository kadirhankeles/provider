import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

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