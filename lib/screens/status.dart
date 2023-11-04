import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_jeet/Supply/colors.dart';
import 'package:whatsapp_clone_by_jeet/auth/mystatus.dart';
import 'package:whatsapp_clone_by_jeet/auth/others_status.dart';

class Status_screen extends StatefulWidget {
  const Status_screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Status_screen> createState() => _Status_screenState();
}

class _Status_screenState extends State<Status_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[900],
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            mystatus(),
            Container(
              height: 33,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                child: Text(
                  "Recent updates",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white10),
                ),
              ),
            ),
            Other_status(),
          ],
        ),
      ),
    );
  }
}
