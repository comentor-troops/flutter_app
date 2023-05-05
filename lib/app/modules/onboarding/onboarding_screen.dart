import 'package:flutter/material.dart';
import 'package:flutter_app/app/routings/app_routers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../components/normal_button_widget.dart';
import '../../config/size_config.dart';
import 'onboarding_controller.dart';

class OnBoardingScreen extends GetView<OnBoardingController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
              child: IntroductionScreen(
                controlsPadding: EdgeInsets.zero,
                globalBackgroundColor: Colors.white,
                pages: listPagesViewModel,
                showSkipButton: true,
                skip: const SizedBox.shrink(),
                next: const SizedBox.shrink(),
                done: const SizedBox.shrink(),
                onDone: () {
                  // On Done button pressed
                },
                onSkip: () {
                  // On Skip button pressed
                },
                dotsDecorator: DotsDecorator(
                  activeSize: const Size(10.0, 10.0),
                  activeColor: Theme.of(context).colorScheme.secondary,
                  color: Colors.black26,
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: SizeConfig.screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  NormalButtonWidget(
                    title: "Login",
                    onPressed: () => Get.offNamed(AppRouters.login),
                  ),
                  const SizedBox(height: 16),
                  NormalButtonWidget(
                    title: "Register",
                    onPressed: () => Get.offNamed(AppRouters.register),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<PageViewModel> listPagesViewModel = [
  pageViewModel(
    "Purchase online",
    "Purchase Online !!",
    "Lorem ipsum dolor sit amet, consectetur adipiscing,sed do eiusmod tempor ut labore",
  ),
  pageViewModel(
    "Track Order",
    "Track order !!",
    "Lorem ipsum dolor sit amet, consectetur adipiscing,sed do eiusmod tempor ut labore",
  ),
  pageViewModel(
    "Get your order",
    "Get your order !!",
    "Lorem ipsum dolor sit amet, consectetur adipiscing,sed do eiusmod tempor ut labore",
  )
];

PageViewModel pageViewModel(String images, String title, String note) {
  return PageViewModel(
    useScrollView: false,
    titleWidget: Column(
      children: [
        SizedBox(
          height: 190,
          width: SizeConfig.screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/logo.svg"),
              const SizedBox(height: 8),
              const Text(
                "eCommerce Shop",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                color: Colors.black,
                endIndent: 185,
                thickness: 1,
              ),
              const Text(
                "Professional App for your\neCommerce business",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    ),
    bodyWidget: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Image.asset(
            "assets/images/$images.jpg",
            height: 300,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          note,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}
