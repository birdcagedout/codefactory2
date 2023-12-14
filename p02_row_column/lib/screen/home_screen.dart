import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
