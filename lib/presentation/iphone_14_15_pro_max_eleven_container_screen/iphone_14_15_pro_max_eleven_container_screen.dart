import 'dart:developer';
import 'dart:io';

import 'package:apni_gaadi_driver/chat/chat_list.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/main.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_page/iphone_14_15_pro_max_eleven_page.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentythree_screen/iphone_14_15_pro_max_twentythree_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable

class Iphone1415ProMaxElevenContainerScreen extends StatefulWidget {
  final String phone;
  Iphone1415ProMaxElevenContainerScreen({Key? key, required this.phone})
      : super(key: key);

  @override
  State<Iphone1415ProMaxElevenContainerScreen> createState() =>
      _Iphone1415ProMaxElevenContainerScreenState();
}

class _Iphone1415ProMaxElevenContainerScreenState
    extends State<Iphone1415ProMaxElevenContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  DateTime? lastBackPressed;
  BottomBarEnum currentPage = BottomBarEnum.Home;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        bool shouldPop = currentPage == BottomBarEnum.Home;
        // Fluttertoast.showToast(msg: currentPage.toString());
        if (shouldPop) {
          exit(0);
        } else {
          navRealKey.currentState!.pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) {
            return Iphone1415ProMaxElevenContainerScreen(
              phone: widget.phone,
            );
          }), (route) => false);
        }
      },
      child: SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.gray900,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup690),
                          fit: BoxFit.cover)),
                  child: Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.iphone1415ProMaxElevenPage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(routeSetting.name!),
                          transitionDuration: Duration(seconds: 0)))),
              bottomNavigationBar: _buildBottomBar(context))),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      setState(() {
        currentPage = type;
      });
      log(currentPage.toString());
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    log(type.toString());
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone1415ProMaxElevenPage;
      case BottomBarEnum.Search:
        return "chat";
      case BottomBarEnum.History:
        return "History";
      case BottomBarEnum.Profile:
        return AppRoutes.iphone1415ProMaxTwentythreeScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone1415ProMaxElevenPage:
        return Iphone1415ProMaxElevenPage();
      case "chat":
        return ChatListScreen(
          phone: widget.phone,
        );

      case "chat":
        return ChatListScreen(
          phone: widget.phone,
        );

      default:
        return Iphone1415ProMaxTwentythreeScreen();
    }
  }
}
