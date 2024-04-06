import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxSeventeenScreen extends StatelessWidget {
  const Iphone1415ProMaxSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 59.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img09LeftChevron,
                      height: 28.v,
                      width: 26.h,
                      margin: EdgeInsets.only(
                        top: 6.v,
                        bottom: 10.v,
                      ),
                    ),
                    Container(
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      margin: EdgeInsets.only(left: 17.h),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse10,
                            height: 44.adaptSize,
                            width: 44.adaptSize,
                            radius: BorderRadius.circular(
                              22.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 7.v,
                              width: 9.h,
                              margin: EdgeInsets.only(right: 5.h),
                              decoration: BoxDecoration(
                                color: appTheme.green500,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                                border: Border.all(
                                  color: appTheme.black900,
                                  width: 1.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 4.v,
                        bottom: 14.v,
                      ),
                      child: Text(
                        "Chat with Ravi",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 3.h,
                    right: 4.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 24.v,
                  ),
                  decoration: AppDecoration.fillBluegray90004.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder22,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Today",
                          style: CustomTextStyles.bodyLargeRegular_1,
                        ),
                      ),
                      SizedBox(height: 28.v),
                      _buildOneTenTwoThirtyNineFourOneTwoOneFourThreeFourSixOneFiveSeven(
                          context),
                      Spacer(),
                      CustomElevatedButton(
                        height: 36.v,
                        width: 83.h,
                        text: "Send",
                        margin: EdgeInsets.only(right: 32.h),
                        rightIcon: Container(
                          margin: EdgeInsets.only(left: 9.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTablersend,
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillLightGreen,
                        buttonTextStyle: theme.textTheme.labelMedium!,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 1.v),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text(
                          "Type a message",
                          style: CustomTextStyles.bodyMediumRegular15,
                        ),
                      ),
                      SizedBox(height: 9.v),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 81.v),
              Container(
                height: 9.v,
                width: 131.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOneTenTwoThirtyNineFourOneTwoOneFourThreeFourSixOneFiveSeven(
      BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 29.h,
                  vertical: 25.v,
                ),
                decoration: AppDecoration.fillGray800.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Text(
                  "in how much time you will arrive?",
                  style: CustomTextStyles.bodyMediumRegular15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 53.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "3:15 pm",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 17.v),
        Padding(
          padding: EdgeInsets.only(right: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 53.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "3:18 pm",
                  style: CustomTextStyles.bodySmallLightgreen600,
                ),
              ),
              Container(
                width: 293.h,
                margin: EdgeInsets.only(left: 10.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 28.h,
                  vertical: 25.v,
                ),
                decoration: AppDecoration.fillLightGreen.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL201,
                ),
                child: Text(
                  "On my way in 5 mins",
                  style: CustomTextStyles.bodyMediumRegular15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
