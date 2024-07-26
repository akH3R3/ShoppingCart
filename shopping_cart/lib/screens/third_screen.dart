import 'package:flutter/material.dart';
import 'package:shopping_cart/model.dart';
import 'package:shopping_cart/screens/final_screen.dart';

class ThirdScreen extends StatefulWidget {
  final List<Item> vegetables;

  ThirdScreen({required this.vegetables});

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List<Item> fruits = [
    Item(name: 'Apple', imageUrl: 'https://th.bing.com/th/id/OIP.j1_y6Mjvzy5ORzCzm5GVHQHaGt?w=194&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.99),
    Item(name: 'Banana', imageUrl: 'https://th.bing.com/th/id/OIP.dsu7SZi1uUOsJmZnVHClWgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.49),
    Item(name: 'Apple', imageUrl: 'https://th.bing.com/th/id/OIP.j1_y6Mjvzy5ORzCzm5GVHQHaGt?w=194&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.99),
    Item(name: 'Banana', imageUrl: 'https://th.bing.com/th/id/OIP.dsu7SZi1uUOsJmZnVHClWgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.49),
    Item(name: 'Apple', imageUrl: 'https://th.bing.com/th/id/OIP.j1_y6Mjvzy5ORzCzm5GVHQHaGt?w=194&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.99),
    Item(name: 'Banana', imageUrl: 'https://th.bing.com/th/id/OIP.dsu7SZi1uUOsJmZnVHClWgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.49),
    Item(name: 'Apple', imageUrl: 'https://th.bing.com/th/id/OIP.j1_y6Mjvzy5ORzCzm5GVHQHaGt?w=194&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.99),
    Item(name: 'Banana', imageUrl: 'https://th.bing.com/th/id/OIP.dsu7SZi1uUOsJmZnVHClWgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.49),
    Item(name: 'Apple', imageUrl: 'https://th.bing.com/th/id/OIP.j1_y6Mjvzy5ORzCzm5GVHQHaGt?w=194&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.99),
    Item(name: 'Banana', imageUrl: 'https://th.bing.com/th/id/OIP.dsu7SZi1uUOsJmZnVHClWgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.49),
    Item(name: 'Apple', imageUrl: 'https://th.bing.com/th/id/OIP.j1_y6Mjvzy5ORzCzm5GVHQHaGt?w=194&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.99),
    Item(name: 'Banana', imageUrl: 'https://th.bing.com/th/id/OIP.dsu7SZi1uUOsJmZnVHClWgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.49),
    Item(name: 'Apple', imageUrl: 'https://th.bing.com/th/id/OIP.j1_y6Mjvzy5ORzCzm5GVHQHaGt?w=194&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 3.99),
    Item(name: 'Banana', imageUrl: 'https://th.bing.com/th/id/OIP.dsu7SZi1uUOsJmZnVHClWgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7', price: 1.49),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'F R U I T S',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FinalScreen(
                          items: [...widget.vegetables, ...fruits],
                        )));
              },
              icon: Icon(Icons.navigate_next))
        ],
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Card(
            child: ListTile(
              leading: Image.network(fruit.imageUrl, width: 50, height: 50),
              title: Text(fruit.name),
              subtitle: Text('\$${fruit.price.toStringAsFixed(2)}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (fruit.quantity > 0) fruit.quantity--;
                      });
                    },
                  ),
                  Text(fruit.quantity.toString(), style: TextStyle(fontSize: 18),),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        fruit.quantity++;
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
