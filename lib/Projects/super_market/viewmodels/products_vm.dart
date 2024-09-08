import 'package:demo_camp/data/products_db.dart';
import 'package:demo_camp/models/product.dart';

class ProductsVM{
  List<Product>loadAllProducts(){
    ProductsDb db=ProductsDb();
      return db.select().map((e)=>Product.fromMap(e)).toList();

  }
}