import 'package:flutter/material.dart';

class TopCreators extends StatelessWidget {
  const TopCreators({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: Colors.purple.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade500,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                )
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top Creators',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Name", style: TextStyle(color: Colors.white, fontSize: 10),),
                        Text("Artworks", style: TextStyle(color: Colors.white, fontSize: 10),),
                        Text("Rating", style: TextStyle(color: Colors.white, fontSize: 10),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 60,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    color: Colors.black,
                    child: const ListTile(
                      leading: CircleAvatar(
                        radius: 10,
                      ),
                      title: Text(
                        'Technology behind the Blockchain',
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.white
                        ),
                      ),
                      subtitle: Text(''),
                      trailing: Icon(Icons.edit, color: Colors.white, size: 10,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    color: Colors.black,
                    child: const ListTile(
                      leading: CircleAvatar(
                        radius: 10,
                      ),
                      title: Text(
                        'Technology behind the Blockchain',
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.white
                        ),
                      ),
                      subtitle: Text(''),
                      trailing: Icon(Icons.edit, color: Colors.white, size: 10,),
                    ),
                  ),
                ),
              ],
            ),
            
      
          ],
        ),
      ),
    );
  }
}
