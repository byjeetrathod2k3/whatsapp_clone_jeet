import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_jeet/Supply/colors.dart';

class TypingBar extends StatelessWidget {
  const TypingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fprofile&psig=AOvVaw0VNkJdXJ-iFqYkinOwqUcj&ust=1698760376220000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPicltr1nYIDFQAAAAAdAAAAABAE'),
            radius: 30,
          ),
          SizedBox()
        ],
      ),
    );
  }
}
