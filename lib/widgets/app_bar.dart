import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        const Text("Home"),
        const Spacer(flex: 1,),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search",
                fillColor: Colors.blue,
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ),
          ),
        ),
        SizedBox(width: width * .03,),
        const Icon(Icons.notifications_none_outlined),
        SizedBox(width: width * .01,),
        const Icon(Icons.notifications_none_outlined),
        SizedBox(width: width * .01,),
        const Icon(Icons.power_settings_new_sharp),
        SizedBox(width: width * .05,),
        const CircleAvatar()
      ],
    );
  }
}
