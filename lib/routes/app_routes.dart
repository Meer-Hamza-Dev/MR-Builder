import 'package:get/get.dart';
import 'package:mr_builder/app/active_job/active_job_view.dart';
import 'package:mr_builder/app/auth/binding/auth_binding.dart';
import 'package:mr_builder/app/auth/views/signIn_view.dart';
import 'package:mr_builder/app/auth/views/signUp_view.dart';
import 'package:mr_builder/app/cancel_job/cancel_job_view.dart';
import 'package:mr_builder/app/chat/chat_view.dart';
import 'package:mr_builder/app/create_task/create_task_view.dart';
import 'package:mr_builder/app/home/home_view.dart';
import 'package:mr_builder/app/need_electrician/electrician_view.dart';
import 'package:mr_builder/app/payment/payment_view.dart';
import 'package:mr_builder/app/proposal_details/proposal_details_view.dart';
import 'package:mr_builder/app/security_deposit/security_deposit_view.dart';
import 'package:mr_builder/app/splash_screen/splash_binding.dart';
import 'package:mr_builder/app/worker_detail/worker_detail_view.dart';
import 'app_pages.dart';
import 'package:mr_builder/app/splash_screen/splash_view.dart';

class AppPages {
  static const INITIAL = Routes.splashScreenRoute;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.splashScreenRoute,
      page: () => const Splash_view(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.signinViewRoute,
      page: () => SignIn_View(),
      transition: Transition.fadeIn,
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signupViewRoute,
      page: () => SignUp_view(),
      binding: AuthBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.homeViewRoute,
      page: () => Home_view(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.createTaskRoute,
      page: () => const CreateTask(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.securityDepositRoute,
      page: () => SecurityDeposit(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.paymentViewRoute,
      page: () => PaymentView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.needElectricianRoute,
      page: () => NeedElectrician(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.proposalDetailsRoute,
      page: () => ProposalDetails(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.chatViewRoute,
      page: () => ChatView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.workerDetailRoute,
      page: () => WorkerDetail(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.activeJobRoute,
      page: () => ActiveJob(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.cancelJobRoute,
      page: () => CancelJob(),
      transition: Transition.fadeIn,
    ),
  ];
}
