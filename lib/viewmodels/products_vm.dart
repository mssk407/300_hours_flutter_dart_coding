

import '../data/products_db.dart';
import '../models/product.dart';

class ProductsVM{
  late Map<Product,int> cardItems;
  static late List <Product> favoriteItems=[];
  addFavroteProducte(Product p,bool chose){
    if(favoriteItems.contains(p)!)
     favoriteItems.add(p);
  }
   


  
  List<Product>loadAllProducts(){
    ProductsDb db=ProductsDb();
      return db.select().map((e)=>Product.fromMap(e)).toList();

  }
}