import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Stuff"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Stuff"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Stuff"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Stuff"),
          ),
        ],
      ),
    );
  }
}
