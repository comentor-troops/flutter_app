import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../proposal_controller.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/item_chats_widget.dart';

class ChatsRoomScreen extends GetView<ProposalController> {
  const ChatsRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60), child: AppBarWidget()),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  children: const [
                    ItemChatWidget(isSender: true),
                    ItemChatWidget(isSender: false)
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              color: Colors.white,
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.28,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions,
                            size: 24.0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const CircleAvatar(
                    radius: 28.0,
                    backgroundColor: Colors.blue,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
