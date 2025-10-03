import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CreatePost extends StatelessWidget {
  final VoidCallback? onPostCreated;
  const CreatePost({super.key, this.onPostCreated});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPostCreated,
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/profile/prof1.jpg"),
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "What's on your mind?",
            border:  InputBorder.none,
          ),
        ),
        trailing: Icon(Icons.image),
    );
  }
}