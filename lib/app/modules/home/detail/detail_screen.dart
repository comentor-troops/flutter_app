import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/normal_button_widget.dart';
import 'package:flutter_app/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

class DetailScreen extends GetView<HomeController> {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 1,
              backgroundColor: Colors.blue,
              pinned: true,
              toolbarHeight: 40,
              expandedHeight: MediaQuery.of(context).size.height / 3,
              automaticallyImplyLeading: true,
              leadingWidth: 60,
              flexibleSpace: Stack(
                children: [
                  FlexibleSpaceBar(
                    background: Image.asset(
                      "assets/images/onions.jpg",
                      fit: BoxFit.fill,
                    ),
                    expandedTitleScale: 1,
                    titlePadding: const EdgeInsets.only(),
                  ),
                ],
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: MySliverPersistentHeader(
                height: 100,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "[WTS] Bawang merah fresh",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text("Harga: Rp10.000/Kg ")),
                                const SizedBox(width: 8),
                                Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text("Quantity: 1.000 Kg"))
                              ],
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Description",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Shallots are one type of vegetable that is used as an ingredient/seasoning for everyday food and is also commonly used as a traditional medicine or an ingredient for the food industry which is currently growing rapidly.",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 32),
                    child: NormalButtonWidget(
                      title: "Add",
                      onPressed: () {},
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

class MySliverPersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  MySliverPersistentHeader({required this.child, required this.height});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: height,
      child: child,
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant MySliverPersistentHeader oldDelegate) {
    return height != oldDelegate.height || child != oldDelegate.child;
  }
}
