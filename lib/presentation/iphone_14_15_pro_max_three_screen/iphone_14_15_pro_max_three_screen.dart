import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThreeScreen extends StatelessWidget {
  Iphone1415ProMaxThreeScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  List<String> radioList = ["lbl_english", "lbl_hindi"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTwentyOneColumn(context),
                  Spacer(flex: 33),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: _buildGroup214RadioGroup(context),
                  ),
                  Spacer(flex: 29),
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
                  Spacer(flex: 36),
                  SizedBox(height: 14.v),
                  Container(
                      height: 9.v,
                      width: 131.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(4.h)))
                ]))));
  }

  /// Section Widget
  Widget _buildTwentyOneColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 61.v),
        decoration: AppDecoration.gradientCyanToBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
              padding: EdgeInsets.only(top: 72.v, bottom: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.img21,
                        height: 52.v,
                        width: 193.h),
                    SizedBox(height: 15.v),
                    SizedBox(
                        width: 153.h,
                        child: Text("Select your preferred language.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgTranslate1,
              height: 49.adaptSize,
              width: 49.adaptSize,
              margin: EdgeInsets.only(left: 47.h, top: 140.v))
        ]));
  }

  /// Section Widget
  Widget _buildGroup214RadioGroup(BuildContext context) {
    return Column(children: [
      CustomRadioButton(
          text: "English",
          value: radioList[0],
          groupValue: radioGroup,
          padding: EdgeInsets.fromLTRB(29.h, 18.v, 30.h, 18.v),
          onChange: (value) {
            radioGroup = value;
          }),
      Padding(
          padding: EdgeInsets.only(top: 44.v),
          child: CustomRadioButton(
              text: "Hindi",
              value: radioList[1],
              groupValue: radioGroup,
              padding: EdgeInsets.fromLTRB(26.h, 17.v, 30.h, 17.v),
              onChange: (value) {
                radioGroup = value;
              }))
    ]);
  }

  /// Navigates to the iphone1415ProMaxFourScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFourScreen);
  }
}
