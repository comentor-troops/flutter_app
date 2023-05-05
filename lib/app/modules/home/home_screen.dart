import 'package:flutter/material.dart';
import 'package:flutter_app/app/config/size_config.dart';
import 'package:flutter_app/app/routings/app_routers.dart';
import 'package:get/get.dart';
import '../../components/normal_textfield_widget.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 70,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: NormalTextFieldWidget(
            fillColor: Colors.white,
            icon: Icons.search,
            obscureText: false,
            hintText: "Search",
            title: "",
            suffixIcon: Icon(Icons.tune, size: 24),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 24.0,
              backgroundColor: Colors.white,
              child: Icon(Icons.star, color: Colors.grey),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                itemCount: 3,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: InkWell(
                      onTap: () => Get.toNamed(AppRouters.detail),
                      child: Container(
                        height: 370,
                        width: SizeConfig.screenWidth,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Hourly - Posted 2 hours ago",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "[WTS] Bawang merah fresh",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                                const CircleAvatar(
                                  radius: 24.0,
                                  backgroundColor: Color(0xFFF6F6F6),
                                  child: Icon(Icons.star, color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF6F6F6),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text("Harga: Rp10.000/Kg "),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF6F6F6),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text("Quantity: 1.000 Kg"),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/images/onions.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
