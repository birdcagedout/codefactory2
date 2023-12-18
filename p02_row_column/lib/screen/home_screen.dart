import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // bottom: false,
        child: Container(
          color: Colors.black,
          // height: 100,
          // height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
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
