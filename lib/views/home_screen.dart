import 'package:flutter/material.dart';

import '../models/product.dart';
import '../viewmodels/products_vm.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) :
   super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductsVM pVM = ProductsVM();

  late List<Product> allProducts;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    allProducts = pVM.loadAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
          // actions: [IconButton(icon: Icons,)]
        ),
        body: ListView.builder(
            itemCount: allProducts.length,
            itemBuilder: (ctx, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(ctx, "/details",
                      arguments: allProducts[index]);
                  // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsScreen(),settings: RouteSettings(arguments: allProducts[index])));
                },
                child: Card(
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.network(allProducts[index].image),
                          Positioned(
                            right: -10,
                            child: Container(
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: Center(child: Text("20%")),
                            ),
                          ),
                          Positioned(
                              left: -10,
                              child: allProducts[index].liked
                                  ? InkWell(
                                      onTap: () {
                                        allProducts[index].liked = false;
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        size: 30,
                                        color: Colors.red,
                                      ))
                                  : InkWell(
                                      onTap: () {
                                        allProducts[index].liked = true;
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 30,
                                        color: Colors.red,
                                      )))
                        ],
                      ),
                      // Image.network("https://storage.googleapis.com/pod_public/1300/168838.jpg"),
                      ListTile(
                        subtitle: Text(allProducts[index].brand),
                        title: Text(allProducts[index].name),
                        trailing: Text("${allProducts[index].price}"),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
