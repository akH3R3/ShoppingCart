import 'package:flutter/material.dart';
import 'package:shopping_cart/model.dart';

class FinalScreen extends StatelessWidget {
  final List<Item> items;

  FinalScreen({required this.items});

  @override
  Widget build(BuildContext context) {
    double totalPrice =
        items.fold(0, (sum, item) => sum + (item.price * item.quantity));

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'B I L L',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...items.where((item) => item.quantity > 0).map((item) => ListTile(
                title: Text(item.name),
                subtitle: Text(
                    '${item.quantity} x \$${item.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),),
                trailing: Text(
                    '\$${(item.price * item.quantity).toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15),
                    ),
              )),
          ListTile(
            title: Text('Total', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
            trailing: Text('\$${totalPrice.toStringAsFixed(2)}', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),
          ),
        ],
      ),
    );
  }
}
