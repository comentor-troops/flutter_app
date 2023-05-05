import 'package:get/get.dart';
import '../proposal/proposal_controller.dart';
import 'main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<ProposalController>(() => ProposalController());
  }
}
