import 'show_product_page.dart';
import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import '../controllers/product_controller.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);

  ProductController controller = getIt.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produtos"),
      ),
      body: ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (contex, index) {
          // return Text(controller.products[index].name);
          return InkWell(
            onTap: () {
              controller.getProductId(controller.products[index].id);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (contex) => ShowProductPage(),
                ),
              );
            },
            child: Card(
              elevation: 15,
              child: Container(
                padding:
                    EdgeInsets.only(left: 50, right: 50, top: 25, bottom: 25),
                child: Column(
                  children: [
                    Text(controller.products[index].id.toString()),
                    Text(controller.products[index].name),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
