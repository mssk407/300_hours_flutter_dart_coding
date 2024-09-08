class Product{
  late String name;
  late String description;
  late double price;
    String? imageURL;
    Product({required this.name, required this.description, required this.price, this.imageURL});
    Product.fromMap(Map<String ,dynamic> row){
      name=row['name'];
      description=row['description'];
      price=row['price'];
    }
}