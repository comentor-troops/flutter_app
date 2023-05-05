import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main/main_controller.dart';

class AppBarWidget extends GetView<MainController> {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      flexibleSpace: const Padding(
        padding: EdgeInsets.only(left: 32),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
            title: Text(
              "Jhon Doe",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            subtitle: Text(
              "Typing...",
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.call,
            size: 24.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            size: 24.0,
          ),
        ),
      ],
    );
  }
}
