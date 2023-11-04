import 'package:flutter/material.dart';

class Other_status extends StatelessWidget {
  const Other_status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 26,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage("assets/my.jpg"),
      ),
      title: Text(
        "Balramuu",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        "Today at,01:23",
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }
}
