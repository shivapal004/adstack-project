import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    Widget customListTile({required IconData icon, required String title, required VoidCallback onTap}) {
      return ListTile(
        leading: Icon(icon, size: 18,),
        title: Text(title, style: const TextStyle(
          fontSize: 14
        ),),
        onTap: onTap,
      );
    }

    return Column(
      children: [
        const SizedBox(height: 5,),
        const Icon(Icons.home, size: 30,),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        const CircleAvatar(
          radius: 35,
        ),
        const Center(child: Text("Shiva Pal")),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 1.0),
              child: Text("Admin"),
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        customListTile(
          icon: Icons.home,
          title: "Home",
          onTap: () {},
        ),
        customListTile(
          icon: Icons.person,
          title: "Employees",
          onTap: () {},
        ),
        customListTile(
          icon: Icons.home,
          title: "Attendance",
          onTap: () {},
        ),
        customListTile(
          icon: Icons.home,
          title: "Summary",
          onTap: () {},
        ),
        customListTile(
          icon: Icons.info_outline,
          title: "Information",
          onTap: () {},
        ),
        ListTile(
          title: const Text("WORKSPACES", style: TextStyle(fontSize: 12),),
          trailing: const Icon(Icons.add),
          onTap: () {},
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton(
            items: const [
              DropdownMenuItem(
                child: Text(
                  "Adstacks",
                  style: TextStyle(fontSize: 12), // Smaller text
                ),
              ),
            ],
            onChanged: (newValue) {},
            iconSize: 16, // Smaller dropdown icon
            style: const TextStyle(fontSize: 12), // Smaller text for selected item
            isDense: true, // Reduce the height of the button
          ),
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton(
            items: const [
              DropdownMenuItem(
                child: Text(
                  "Finance",
                  style: TextStyle(fontSize: 12), // Smaller text
                ),
              ),
            ],
            onChanged: (newValue) {},
            iconSize: 16, // Smaller dropdown icon
            style: const TextStyle(fontSize: 12), // Smaller text for selected item
            isDense: true, // Reduce the height of the button
          ),
        ),
        customListTile(
          icon: Icons.settings,
          title: "Setting",
          onTap: () {},
        ),
        customListTile(
          icon: Icons.logout_outlined,
          title: "Logout",
          onTap: () {},
        ),
      ],
    );
  }


}
