import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_controller.dart';
import 'widgets/header_profile_widget.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF6F6F6),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "My Profile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              const HeaderProfileWidget(),
              const SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text("Account"),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.menuItem.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: controller.menuIcon[index],
                              title: Text(controller.menuItem[index]),
                              trailing: const Icon(
                                Icons.keyboard_arrow_right,
                                size: 24.0,
                              ),
                            ),
                            const Divider(
                              indent: 70,
                              thickness: 1,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
