import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxTwoScreen extends StatelessWidget {
  const Iphone1415ProMaxTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildWelcomeSection(context),
                  SizedBox(height: 46.v),
                  CustomImageView(
                    imagePath: ImageConstant.img31,
                    // height: 253.v,
                    // width: 430.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          SizedBox(width: 324.h, child: Divider(indent: 47.h))),
                  SizedBox(height: 89.v),
                  CustomOutlinedButton(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      text: "Next",
                      margin: EdgeInsets.only(left: 44.h, right: 43.h),
                      onPressed: () {
                        onTapNext(context);
                      }),
                  Spacer(),
                  // SizedBox(height: 14.v),
                  // Container(
                  //     height: 9.v,
                  //     width: 131.h,
                  //     decoration: BoxDecoration(
                  //         color: theme.colorScheme.primary,
                  //         borderRadius: BorderRadius.circular(4.h)))
                ]))));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 58.v),
        decoration: AppDecoration.gradientCyanToBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 27.v),
              Text("Welcome !",
                  style: theme.textTheme.titleLarge!.copyWith(fontSize: 26)),
              SizedBox(height: 12.v),
              Text("Get a new experience with,",
                  style: theme.textTheme.titleLarge),
              SizedBox(height: 39.v),
              CustomImageView(
                  imagePath: ImageConstant.img21,
                  height: 64.v,
                  width: 193.h,
                  fit: BoxFit.fill,
                  alignment: Alignment.center)
            ]));
  }

  /// Navigates to the iphone1415ProMaxThreeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFourScreen);
  }
}
