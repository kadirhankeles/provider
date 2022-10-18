import 'package:flutter/foundation.dart';

class Item with ChangeNotifier{
int _cartCount;
List? sepet=[];
List? products = [
  {"image":r"https://images.asos-media.com/products/adidas-originals-stan-smith-sneakers-van-leer-in-wit-met-groen/201379637-4?$n_640w$&wid=513&fit=constrain",
  "title":"Stan Smith",
  "description":"açıklama",
  "price":227
  },
  {"image":"https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1eedde6f-0c5e-4088-86b5-bf283db4e3e5/air-force-1-07-shoes-cHxKHR.png",
  "title":"Nike Air Force",
  "description":"açıklama",
  "price":215
  },
  {"image":"https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/af9422b2f2b24ddc91e3adf5007bca87_9366/zx-22-boost-ayakkab%C4%B1.jpg",
  "title":"Adidas Spor",
  "description":"açıklama",
  "price":312
  },
];
Item(this._cartCount);
int? get cartCounts => _cartCount;
set cartCount(int value){
  _cartCount =value;
}

void increase(){
  _cartCount++;
  notifyListeners();
}

void decrease(){
  _cartCount--;
  notifyListeners();
}

void reset(){
  _cartCount=0;
  notifyListeners();
}
void addSepet(Object value){
  sepet!.add(value);
  print(sepet.toString());
  notifyListeners();
}
void deleteSepet(int index){
sepet!.removeAt(index);
notifyListeners();
}
}
