import 'package:delivery_app_clean_architecture/app/data/in_memory_products.dart';
import 'package:delivery_app_clean_architecture/app/domain/model/product.dart';
import 'package:delivery_app_clean_architecture/app/presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartScreen extends StatelessWidget {
  final VoidCallback onShopping;
  const CartScreen({
    super.key,
    required this.onShopping,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Carrinho",
        ),
      ),
      body: _FullCart(),
    );
  }
}

class _FullCart extends StatelessWidget {
  const _FullCart();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 230,
              itemBuilder: (context, index) {
                return _ShoppingItemCart(
                  product: products[index],
                );
              },
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        )
      ],
    );
  }
}

// ignore: unused_element
class _EmptyCart extends StatelessWidget {
  final VoidCallback onShopping;
  const _EmptyCart({
    required this.onShopping,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.faceSadTear,
          color: DeliveryColors.green,
          size: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Text(
            'Não há produtos!',
            textAlign: TextAlign.center,
            style: TextStyle(
              // ignore: deprecated_member_use
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: DeliveryColors.purple,
            ),
            onPressed: onShopping,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Text(
                'Comprar',
                style: TextStyle(
                  color: DeliveryColors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ShoppingItemCart extends StatelessWidget {
  final Product product;
  const _ShoppingItemCart({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
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
                    Row(),
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
            ],
          ),
        ),
      ),
    );
  }
}
