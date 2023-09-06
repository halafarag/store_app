import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_feild.dart';

class UpdateProductScreen extends StatefulWidget {
  UpdateProductScreen({super.key});
  static String id = 'UpdateProductScreen';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? productName, des, image;

  String? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomTextFeild(
                hintText: 'Product Name',
                onChanged: (data) {
                  productName = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFeild(
                hintText: 'Description',
                onChanged: (data) {
                  des = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFeild(
                  hintText: 'Price',
                  onChanged: (data) {
                    price = data;
                  },
                  inputType: TextInputType.number),
              const SizedBox(
                height: 10,
              ),
              CustomTextFeild(
                hintText: 'Image',
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                text: 'Update',
                onTap: () async {
                  isLoading = true;
                  setState(() {});
                  try {
                    await updateProduct(product);
                    print('success');
                  } catch (e) {
                    print(e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
        id: int.parse(product.id),
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price : price!,
        desc: des == null ? product.discription : des!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
