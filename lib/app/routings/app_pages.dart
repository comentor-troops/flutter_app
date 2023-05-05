import 'package:get/get.dart';
import '../modules/auth/forgotpassword/forgot_password_binding.dart';
import '../modules/auth/forgotpassword/forgot_password_screen.dart';
import '../modules/auth/login/login_binding.dart';
import '../modules/auth/login/login_screen.dart';
import '../modules/auth/register/register_binding.dart';
import '../modules/auth/register/register_screen.dart';
import '../modules/auth/verification/verification_binding.dart';
import '../modules/auth/verification/verification_screen.dart';
import '../modules/home/detail/detail_screen.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';
import '../modules/main/main_screen.dart';
import '../modules/main/main_binding.dart';
import '../modules/onboarding/onboarding_binding.dart';
import '../modules/onboarding/onboarding_screen.dart';
import '../modules/profile/profile_binding.dart';
import '../modules/profile/profile_screen.dart';
import '../modules/proposal/chatsroom/chats_room_screen.dart';
import '../modules/proposal/proposal_binding.dart';
import '../modules/proposal/proposal_screen.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.onboarding;

  static final routes = [
    GetPage(
      name: AppRouters.onboarding,
      page: () => const OnBoardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRouters.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRouters.register,
      page: () => const RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRouters.forgotPassword,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: AppRouters.verification,
      page: () => const VerificationScreen(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: AppRouters.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.detail,
      page: () => const DetailScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.proposal,
      page: () => const ProposalScreen(),
      binding: ProposalBinding(),
    ),
    GetPage(
      name: AppRouters.chatsRoom,
      page: () => const ChatsRoomScreen(),
      binding: ProposalBinding(),
    ),
    GetPage(
      name: AppRouters.profile,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
    ),
  ];
}
