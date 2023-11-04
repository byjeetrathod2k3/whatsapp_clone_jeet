import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_jeet/Supply/colors.dart';

class call_other extends StatelessWidget {
  const call_other({
    Key? key,
  }) : super(key: key);

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
      subtitle: Row(
        children: [
          Icon(
            Icons.call_made,
            color: Colors.green,
          ),
          Text(
            "Today at,01:23",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.call,
        color: tabColor,
      ),
    );
  }
}
