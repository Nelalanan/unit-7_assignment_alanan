import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture and Navigation"),
      ),
      body: Center( // Center the entire Column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is supposed to be a Home Screen"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about'); // Navigate to AboutMe
              },
              child: const Text("Go to About Me"),
            ),
          ],
        ),
      ),
    );
  }
}
