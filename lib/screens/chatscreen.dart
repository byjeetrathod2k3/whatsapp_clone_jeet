import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_jeet/Supply/colors.dart';
import 'package:whatsapp_clone_by_jeet/Supply/info.dart';
import 'package:whatsapp_clone_by_jeet/screens/chatscreenlayout.dart';
import 'package:whatsapp_clone_by_jeet/screens/mobilescreen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        actions: [
          SizedBox(
            width: 35,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => mobileScreenLayout()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/my.jpg'),
          ),
          Text(
            info[0]['name'].toString(),
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            width: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.videocam,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            width: 40,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            width: 40,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ChatScreenLayout(),
          ),
          Stack(
            children: [
              Container(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      child: Card(
                        color: chatBarMessage,
                        margin: EdgeInsets.only(bottom: 8, left: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Message',
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.emoji_emotions,
                                color: Colors.grey,
                              ),
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.attach_file,
                                    color: Colors.grey,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.paypal_rounded,
                                    color: Colors.grey,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.camera_alt_rounded,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8, right: 2, left: 2),
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mic),
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
