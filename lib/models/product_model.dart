class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String discription;
  final String category;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.discription,
        required this.category,
      required this.price,
      required this.rating
      });
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id:jsonData['id'].toString(),
      title: jsonData['title'],
      image: jsonData['image'],
      discription: jsonData['description'],
      category: jsonData['category'],
      price: jsonData['price'].toString(),
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}
class RatingModel{
  final String rate;
  final String count;
  RatingModel({required this.rate,required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'].toString(),
      count: jsonData['count'].toString(),

    );
  }
}
