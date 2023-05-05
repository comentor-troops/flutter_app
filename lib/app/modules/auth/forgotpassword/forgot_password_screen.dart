import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/normal_button_widget.dart';
import '../../../routings/app_routers.dart';
import '../widgets/form_title_widget.dart';
import '../../../components/normal_textfield_widget.dart';
import 'forgot_password_controller.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({super.key});

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
                  title: "Forgot Password",
                  subtitle: "Remember & input your email below"),
              const SizedBox(
                height: 32,
              ),
              const NormalTextFieldWidget(
                title: "Email",
                hintText: 'Enter your email',
                obscureText: false,
                icon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 32,
              ),
              NormalButtonWidget(
                onPressed: () => Get.toNamed(AppRouters.verification),
                title: "Reset Password",
              )
            ],
          ),
        ),
      ),
    );
  }
}
