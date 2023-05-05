import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/normal_button_widget.dart';
import '../../../routings/app_routers.dart';
import '../widgets/form_footer_widget.dart';
import '../widgets/form_title_widget.dart';
import '../../../components/normal_textfield_widget.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FormTitleWidget(title: "Hi, Welcome Back!", subtitle: ""),
            const NormalTextFieldWidget(
              title: "Email",
              icon: Icons.email,
              hintText: "Enter your email",
              obscureText: false,
            ),
            const SizedBox(height: 16),
            Obx(
              () => NormalTextFieldWidget(
                title: "Password",
                icon: Icons.lock,
                hintText: "Enter your password",
                obscureText: controller.hidden.value,
                suffixIcon: IconButton(
                  splashRadius: 1,
                  onPressed: () => controller.hidden.toggle(),
                  icon: controller.hidden.value
                      ? const Icon(
                          Icons.remove_red_eye,
                          size: 22,
                          color: Colors.blue,
                        )
                      : const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 22,
                          color: Colors.grey,
                        ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: TextButton(
                  onPressed: () => Get.toNamed(AppRouters.forgotPassword),
                  child: const Text("Forgot passsword"),
                ),
              ),
            ),
            const SizedBox(height: 32),
            NormalButtonWidget(
              title: "Login",
              onPressed: () => Get.offNamed(AppRouters.main),
            ),
            const SizedBox(height: 32),
            Center(
              child: FormFooterWidget(
                onPressed: () => Get.offNamed(AppRouters.register),
                title: "Don't you have an account? ",
                subtitle: "Sign Up",
              ),
            )
          ],
        ),
      ),
    );
  }
}
