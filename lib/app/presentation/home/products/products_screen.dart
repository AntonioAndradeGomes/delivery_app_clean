import 'package:delivery_app_clean_architecture/app/data/in_memory_products.dart';
import 'package:delivery_app_clean_architecture/app/domain/model/product.dart';
import 'package:delivery_app_clean_architecture/app/presentation/colors.dart';
import 'package:delivery_app_clean_architecture/app/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Produtos',
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return _ItemProduct(
            product: products[index],
          );
        },
      ),
    );
  }
}

class _ItemProduct extends StatelessWidget {
  final Product product;
  const _ItemProduct({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Theme.of(context).canvasColor,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: ClipOval(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    product.name,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      product.description,
                      style: Theme.of(context).textTheme.overline?.copyWith(
                            color: DeliveryColors.lightgrey,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'R\$ ${product.price}',
                    style: TextStyle(
                      // ignore: deprecated_member_use
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
            ),
            DeliveryButton(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ),
              onTap: () {},
              text: 'Add',
            ),
          ],
        ),
      ),
    );
  }
}
