import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/home/widgets/header_widget.dart';
import 'package:get/get.dart';
import '../../components/normal_textfield_widget.dart';
import 'home_controller.dart';
import 'widgets/product_widget.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Wrap(
                direction: Axis.horizontal,
                spacing: 16,
                runSpacing: 16,
                children: controller.menu,
              ),
              HeaderWidget(
                title: "Top Supplier",
                buttonTitle: "See All",
                onPressed: () {},
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 370 * 5 + (16 * 5),
                child: ListView.builder(
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductWidget(
                      title: "[WTS]${controller.title[index]},",
                      image: controller.image[index],
                    );
                  },
                ),
              ),
              HeaderWidget(
                title: "Top Buyer",
                buttonTitle: "See all",
                onPressed: () {},
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 370 * 5 + (16 * 5),
                child: ListView.builder(
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductWidget(
                      title: "[WTB]${controller.title[index]},",
                      image: controller.image[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
