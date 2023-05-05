import 'package:flutter_app/app/modules/proposal/proposal_controller.dart';
import 'package:get/get.dart';

class ProposalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProposalController>(() => ProposalController());
  }
}
