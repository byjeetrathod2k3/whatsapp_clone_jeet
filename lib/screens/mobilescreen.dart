import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_jeet/Supply/colors.dart';
import 'package:whatsapp_clone_by_jeet/auth/contact_list.dart';
import 'package:whatsapp_clone_by_jeet/screens/call_screen.dart';
import 'package:whatsapp_clone_by_jeet/screens/community.dart';
import 'package:whatsapp_clone_by_jeet/screens/status.dart';

class mobileScreenLayout extends StatefulWidget {
  const mobileScreenLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<mobileScreenLayout> createState() => _mobileScreenLayoutState();
}

class _mobileScreenLayoutState extends State<mobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text("WhatsApp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                height: 40,
                width: 40,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    maxRadius: 18,
                    backgroundImage: AssetImage("assets/my.jpg"),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  backgroundColor: appBarColor,
                  elevation: 0,
                ),
              ),
            ),
          ],
          bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.zero,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              tabs: [
                SizedBox(
                  width: 10,
                  child: Tab(
                    icon: Icon(Icons.group),
                    iconMargin: EdgeInsets.zero,
                  ),
                ),
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Updates',
                ),
                Tab(
                  text: 'Calls',
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            community(),
            ContactList(),
            Status_screen(),
            call_screen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
