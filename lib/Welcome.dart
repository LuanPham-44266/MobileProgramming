import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 64),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.network(
              "https://st4.depositphotos.com/1010735/21836/v/450/depositphotos_218363620-stock-illustration-autumn-welcome-sign-colorful-maple.jpg",
              height: 150,
            ),
            const SizedBox(height: 32),
            const Text(
              "Welcome to Flutter",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "My name is Viết Luân\nStudent Code: 23DH111984",
              style: TextStyle(
                fontSize: 20,
                color: Colors.orange,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                fixedSize: const Size(150, 70),
              ),
              onPressed: () {},
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
