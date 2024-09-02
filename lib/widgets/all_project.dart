import 'package:flutter/material.dart';

class AllProject extends StatelessWidget {
  const AllProject({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.purple.shade900,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("All Projects", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                color: Colors.white
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
              )
      
      
      
            ],
          ),
        ),
      ),
    );
  }
}
