import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/normal_button_widget.dart';
import '../../../routings/app_routers.dart';
import '../widgets/form_footer_widget.dart';
import '../widgets/form_title_widget.dart';
import '../../../components/normal_textfield_widget.dart';
import '../widgets/privacy_policy_widget.dart';
import 'register_controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const FormTitleWidget(
              title: "Get Started!",
              subtitle: "Create your account",
            ),
            const SizedBox(height: 32),
            const NormalTextFieldWidget(
              title: "Fullname",
              icon: Icons.person,
              hintText: "Enter your fullname",
              obscureText: false,
            ),
            const SizedBox(height: 16),
            const NormalTextFieldWidget(
              title: "Email",
              icon: Icons.email,
              hintText: "Enter your Email",
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
            const SizedBox(height: 16),
            Obx(
              () => NormalTextFieldWidget(
                title: "Comfirm password",
                icon: Icons.lock,
                hintText: "Enter your comfirm password",
                obscureText: controller.hiddens.value,
                suffixIcon: IconButton(
                  splashRadius: 1,
                  onPressed: () => controller.hiddens.toggle(),
                  icon: controller.hiddens.value
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
            const SizedBox(height: 32),
            NormalButtonWidget(
              title: "Register",
              onPressed: () => Get.offNamed(AppRouters.main),
            ),
            const SizedBox(height: 32),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    indent: 80,
                    color: Color(0xFF5F5F5F),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Center(
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    endIndent: 80,
                    color: Color(0xFF5F5F5F),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Center(
              child: FormFooterWidget(
                onPressed: () => Get.offNamed(AppRouters.login),
                title: "Don't you have an account? ",
                subtitle: "Sign In",
              ),
            ),
            const SizedBox(height: 32),
            const PrivacyPolicyWidget(),
          ],
        ),
      ),
    );
  }
}
