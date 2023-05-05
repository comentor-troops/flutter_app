import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../components/normal_button_widget.dart';
import '../widgets/form_title_widget.dart';
import 'verification_controller.dart';

class VerificationScreen extends GetView<VerificationController> {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 42,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF5F5F5F),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const FormTitleWidget(
                  title: "Verify Code",
                  subtitle: "We've sent the code to the email on your device"),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  showCursor: false,
                  controller: controller.verifyController,
                  focusNode: controller.verifyFocusNode,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  autoFocus: true,
                  textStyle: const TextStyle(
                    fontSize: 32,
                  ),
                  hintStyle:
                      const TextStyle(fontSize: 32, color: Color(0xFFDBDBDB)),
                  hintCharacter: "0",
                  pinTheme: PinTheme(
                    activeColor: Colors.transparent,
                    selectedColor: Colors.transparent,
                    inactiveColor: Colors.transparent,
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              NormalButtonWidget(onPressed: () {}, title: "Verify Account")
            ],
          ),
        ),
      ),
    );
  }
}
