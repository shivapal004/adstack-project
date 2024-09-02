import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../model/birthday_anniversary_card.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Center(
            child: Text(
              'GENERAL 10:00 AM TO 7:00 PM',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          Expanded(
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset("images/calendar.png"),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: BirthdayAnniversaryCard(
              title: 'Today Birthday',
              total: 2,
              avatars: [
                CircleAvatar(
                  radius: 16,
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 16,
                  child: Icon(Icons.person),
                ),
              ],
              buttonText: 'Birthday Wishing',
            ),
          ),
          const Expanded(
            child: BirthdayAnniversaryCard(
              title: 'Anniversary',
              total: 3,
              avatars: [
                CircleAvatar(
                  radius: 16,
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 16,
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 16,
                  child: Icon(Icons.person),
                ),
              ],
              buttonText: 'Anniversary Wishing',
            ),
          ),
        ],
      ),
    );
  }
}
