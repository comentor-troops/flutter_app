import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  TextEditingController verifyController = TextEditingController();
  final verifyFocusNode = FocusNode();
  @override
  void onInit() {
    super.onInit();
    verifyFocusNode.requestFocus();
    verifyController = TextEditingController();
  }
}
