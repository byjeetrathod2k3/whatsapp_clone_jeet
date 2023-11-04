import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_jeet/Supply/colors.dart';
import 'package:whatsapp_clone_by_jeet/auth/call_other.dart';

class call_screen extends StatefulWidget {
  const call_screen({
    Key? key,
  }) : super(key: key);

  @override
  State<call_screen> createState() => _call_screenState();
}

class _call_screenState extends State<call_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 27,
                    child: Icon(Icons.attach_file),
                    backgroundColor: tabColor,
                  ),
                ],
              ),
              title: Text(
                "Create call link",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Share a link for your WhatsApp call",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              height: 33,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                child: Text(
                  "Recent",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ),
            call_other(),
          ],
        ),
      ),
    );
  }
}
