import 'package:flutter/material.dart';
import 'package:shopping_cart/model.dart';
import 'package:shopping_cart/screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Item> vegetables = [
    Item(name: 'Carrot', imageUrl: 'https://th.bing.com/th/id/OIP.FOjDc5qg_YhiGtdOX73-gwHaE8?w=265&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.99),
    Item(name: 'Tomato', imageUrl: 'https://th.bing.com/th/id/OIP.HiwZb7pY_PaooR59RRIHBgHaGK?w=220&h=183&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 2.49),
    Item(name: 'Potato', imageUrl: 'https://th.bing.com/th/id/OIP.QY667vmZ0A3LNOUMHvGJ4AHaFj?w=231&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.6),
    Item(name: 'Brinjle', imageUrl: 'https://th.bing.com/th/id/OIP.ICbrhSCZ-pbYGY4dYPyrwAHaFy?w=218&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.49),
    Item(name: 'Cabage', imageUrl: 'https://th.bing.com/th/id/OIP.1wRFsJ4Xa5EHDDAGPCdk6AHaG5?w=202&h=188&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 4.49),
    Item(name: 'Carrot', imageUrl: 'https://th.bing.com/th/id/OIP.FOjDc5qg_YhiGtdOX73-gwHaE8?w=265&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.99),
    Item(name: 'Tomato', imageUrl: 'https://th.bing.com/th/id/OIP.HiwZb7pY_PaooR59RRIHBgHaGK?w=220&h=183&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 2.49),
    Item(name: 'Potato', imageUrl: 'https://th.bing.com/th/id/OIP.QY667vmZ0A3LNOUMHvGJ4AHaFj?w=231&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.6),
    Item(name: 'Brinjle', imageUrl: 'https://th.bing.com/th/id/OIP.ICbrhSCZ-pbYGY4dYPyrwAHaFy?w=218&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.49),
    Item(name: 'Cabage', imageUrl: 'https://th.bing.com/th/id/OIP.1wRFsJ4Xa5EHDDAGPCdk6AHaG5?w=202&h=188&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 4.49),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'V E G E T A B L E S',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ThirdScreen(vegetables: vegetables)));
              },
              icon: Icon(Icons.navigate_next))
        ],
      ),
      body: ListView.builder(
        itemCount: vegetables.length,
        itemBuilder: (context, index) {
          final vegetable = vegetables[index];
          return Card(
            child: ListTile(
              leading: Image.network(vegetable.imageUrl, width: 50, height: 50),
              title: Text(vegetable.name),
              subtitle: Text('\$${vegetable.price.toStringAsFixed(2)}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (vegetable.quantity > 0) vegetable.quantity--;
                      });
                    },
                  ),
                  Text(vegetable.quantity.toString(), style: TextStyle(fontSize: 18),),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        vegetable.quantity++;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
