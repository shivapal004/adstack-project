import 'package:flutter/material.dart';

class BirthdayAnniversaryCard extends StatelessWidget {
  final String title;
  final int total;
  final List<Widget> avatars;
  final String buttonText;

  const BirthdayAnniversaryCard({
    super.key,
    required this.title,
    required this.total,
    required this.avatars,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown.shade400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.star, size: 15, color: Colors.amber,),
                const Icon(Icons.star, size: 15, color: Colors.amber,),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.star, size: 15, color: Colors.amber,),
                const Icon(Icons.star, size: 15, color: Colors.amber,),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ...avatars,
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send, color: Colors.white, size: 8),
              label: Text(buttonText, style: const TextStyle(fontSize: 10, color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}