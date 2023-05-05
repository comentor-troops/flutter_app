import 'package:get/get.dart';

import 'widgets/category_menu_item_widget.dart';

class HomeController extends GetxController {
  var menu = [
    const CategoryItemWidget(),
    const CategoryItemWidget(),
    const CategoryItemWidget(),
    const CategoryItemWidget(),
  ];
  var image = [
    "assets/images/bawang-putih.jpg",
    "assets/images/onions.jpg",
    "assets/images/wortel.jpg",
    "assets/images/brokoli.jpg",
    "assets/images/tomat.jpg",
  ];
  var title = [
    " Bawang Putih Fresh",
    " Bawang Merah Fresh",
    " Wortel Fresh",
    " Brokoli Fresh",
    " Tomot Fresh",
  ];
}
