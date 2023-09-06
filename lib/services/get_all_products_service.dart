
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductsServices {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      ProductModel productModel = ProductModel.fromJson(data[i]);
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
