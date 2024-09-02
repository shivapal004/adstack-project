import 'package:flutter/material.dart';

class TopRatingProject extends StatelessWidget {
  const TopRatingProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      // color: Colors.deepPurple.shade400,
      child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.pink, // Light pink color
                Colors.blue, // Light blue color
              ],
            ),
            borderRadius: BorderRadius.circular(15), // Same as the card shape radius for a uniform look
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ETHEREUM 2.0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 7,
                  letterSpacing: 2
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Top Rating \nProject',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Trending project and high rating \nproject created by team.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 10
                ),
              ),
              SizedBox(height: 8.0),
              SizedBox(
                height: 30,
                width: 110,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Learn More.', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    backgroundColor: Colors.purple.shade900,
                    foregroundColor: Colors.white// Button color
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
