import 'package:flutter/material.dart';
import 'package:demo_camp/details_screen.dart';
import 'package:demo_camp/models/product.dart';
import 'package:demo_camp/viewmodels/products_vm.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  ProductsVM pVM=ProductsVM();

  @override
  Widget build(BuildContext context) {
    List<Product> allProducts=pVM.loadAllProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body:ListView.builder(
          itemCount: allProducts.length,
          itemBuilder: (ctx,index){
            return
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsScreen(),settings: RouteSettings(arguments: allProducts[index])));
                },
                child: Card(

                child: Column(children: [
                Image.network(allProducts[index].image),
                             // Image.network("https://storage.googleapis.com/pod_public/1300/168838.jpg"),
                ListTile(

                  subtitle: Text(allProducts[index].brand),
                  title: Text(allProducts[index].name),trailing: Text("${allProducts[index].price}"),)
                            ],),),
              );
          }) 
            
    );
  }
}
