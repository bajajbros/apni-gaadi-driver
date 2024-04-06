import 'dart:developer';

import 'package:apni_gaadi_driver/chat/text.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_container_screen/iphone_14_15_pro_max_eleven_container_screen.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_two_screen/iphone_14_15_pro_max_two_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Iphone1415ProMaxOneScreen extends StatelessWidget {
  const Iphone1415ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSevenColumn(context),
                  SizedBox(height: 34.v),
                  // CustomImageView(
                  //     imagePath: ImageConstant.img11,
                  //     height: 333.v,
                  //     width: 215.h,
                  //     alignment: Alignment.centerRight),
                  SizedBox(height: 34.v),
                  CustomOutlinedButton(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: theme.colorScheme.primary,
                      ),
                      text: "Get Started",
                      margin: EdgeInsets.only(left: 44.h, right: 43.h),
                      onPressed: () async {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        String? phone = preferences.getString("phone");
                        log(phone.toString());
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return phone == null
                              ? Iphone1415ProMaxTwoScreen()
                              : Iphone1415ProMaxElevenContainerScreen(
                                  phone: phone,
                                );
                        }));

                        // onTapNext(context);
                      }),
                  SizedBox(height: 54.v),
                  Divider(color: Colors.black26),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Text(
                            "Or Ride with Us",
                            style: CustomTextStyles.titleSmallBlack900,
                          ))),
                  // SizedBox(height: 30.v),
                  // Container(
                  //     height: 9.v,
                  //     width: 131.h,
                  //     decoration: BoxDecoration(
                  //         color: theme.colorScheme.primary,
                  //         borderRadius: BorderRadius.circular(4.h))),
                  // SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildSevenColumn(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        // padding: EdgeInsets.symmetric(horizontal: 67.h, vertical: 91.v),
        decoration: AppDecoration.gradientCyanToBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 48.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 67.h, vertical: 70.v),
                child: CustomImageView(
                  imagePath: ImageConstant.img21,
                ),
              ),
              CustomImageView(
                  imagePath: ImageConstant.img11,
                  height: 360.v,
                  width: 215.h,
                  fit: BoxFit.fill,
                  alignment: Alignment.centerRight),
            ]));
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwoScreen);
  }
}
