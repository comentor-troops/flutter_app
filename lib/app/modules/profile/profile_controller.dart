import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var menuItem = [
    "My Orders",
    "Payment Methods",
    "Help",
    "Manage Account",
    "Terms & privacy",
    "Rate App",
  ];

  var menuIcon = [
    const Icon(Icons.sticky_note_2),
    const Icon(Icons.credit_card),
    const Icon(Icons.help),
    const Icon(Icons.account_circle),
    const Icon(Icons.privacy_tip),
    const Icon(Icons.star),
  ];
}
