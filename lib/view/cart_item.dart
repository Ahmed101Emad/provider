import 'package:flutter/material.dart';
import 'package:prov/model/model.dart';

class CartItem extends StatelessWidget {
  final Product product;
  const CartItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.subTitle!,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(product.title!,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900)),
                    Text("${product.price} \$", style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove),
                ),
                Text(product.quantity.toString()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
