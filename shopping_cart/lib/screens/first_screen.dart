import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_cart/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Center(
              child: Text(
            'A P N I   D U K A A N',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Lottie.network(
                  'https://lottie.host/4b3706a3-8850-45a4-bf7a-83b03debfeb5/qNUAxr2jEk.json',
                  height: 250,
                  width: 250),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                      child: Text(
                    'START SHOPPING',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
