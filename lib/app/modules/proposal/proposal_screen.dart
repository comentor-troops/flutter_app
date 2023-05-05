import 'package:flutter/material.dart';
import 'package:flutter_app/app/config/size_config.dart';
import 'package:flutter_app/app/routings/app_routers.dart';
import 'package:get/get.dart';
import 'proposal_controller.dart';

class ProposalScreen extends GetView<ProposalController> {
  const ProposalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Proposal",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          actions: const [],
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 60),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TabBar(
                  onTap: controller.changeTabIndex,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(text: 'First Tab'),
                    Tab(text: 'Second Tab'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                        itemCount: 5,
                        reverse: false,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: InkWell(
                            onTap: () => Get.toNamed(AppRouters.chatsRoom),
                            child: Container(
                              height: 70,
                              width: SizeConfig.screenWidth,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ListTile(
                                leading: const CircleAvatar(
                                  radius: 24,
                                  backgroundImage: NetworkImage(
                                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                                  ),
                                ),
                                title: const Text("John doe"),
                                subtitle: const Text("Typing..."),
                                trailing: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "00:00 AM",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Center(
                child: Text("Second Tab"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
