import 'package:get/get.dart';
import '../home/home_controller.dart';
import '../profile/profile_controller.dart';
import '../proposal/proposal_controller.dart';
import 'main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<ProposalController>(() => ProposalController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
