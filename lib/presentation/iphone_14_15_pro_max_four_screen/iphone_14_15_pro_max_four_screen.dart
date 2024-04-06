import 'package:apni_gaadi_driver/chat/text.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_six_screen/iphone_14_15_pro_max_six_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxFourScreen extends StatelessWidget {
  const Iphone1415ProMaxFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            // backgroundColor: Colors.green,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildMobileAppScreen(context),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: _buildSignUpWithGoogleButton(context),
                  ),
                  // SizedBox(height: 22.v),
                  // _buildSignUpWithAppleButton(context),
                  SizedBox(height: 22.v),
                  _buildSignUpWithFacebookButton(context),
                  SizedBox(height: 22.v),

                  CustomOutlinedButton(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      text: "Login",
                      margin: EdgeInsets.symmetric(horizontal: 43.h),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Iphone1415ProMaxSixScreen(
                                  // login: true,
                                  );
                            },
                          ),
                        );
                      }),
                  SizedBox(height: 33.v),

                  Text("or", style: CustomTextStyles.titleSmallBlack900),
                  SizedBox(height: 34.v),
                  _buildCreateAccountButton(context),
                  SizedBox(height: 34.v),
                  // _buildLogin(context),
                  // SizedBox(height: 54.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          // width: 254.h,
                          margin: EdgeInsets.symmetric(horizontal: 73.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "By creating an account, you agree to your ",
                                    style: CustomTextStyles.bodyMediumBlack900),
                                TextSpan(
                                    text: "Term of service ",
                                    style: CustomTextStyles.titleSmallBlack900),
                                TextSpan(
                                    text: "and",
                                    style: CustomTextStyles.bodyMediumBlack900),
                                TextSpan(
                                    text: " Privacy Policy",
                                    style: CustomTextStyles.titleSmallBlack900)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 22.v),
                  Container(
                      height: 9.v,
                      width: 131.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(4.h))),
                  SizedBox(height: 14.v)
                ]))));
  }

  /// Section Widget
  Widget _buildMobileAppScreen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 67.h, vertical: 66.v),
        decoration: AppDecoration.gradientCyanToBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 98.v),
              CustomImageView(
                  fit: BoxFit.fill,
                  imagePath: ImageConstant.img21,
                  height: 81.v,
                  width: 295.h)
            ]));
  }

  /// Section Widget
  Widget _buildSignUpWithGoogleButton(BuildContext context) {
    // return CustomElevatedButton(
    //     height: 44.v,
    //     text: "Sign up with Google",
    //     margin: EdgeInsets.only(left: 53.h, right: 54.h),
    //     leftIcon: Container(
    //         margin: EdgeInsets.only(right: 18.h),
    //         child: CustomImageView(
    //             imagePath: ImageConstant.imgSearch1,
    //             height: 27.v,
    //             width: 29.h)),
    //     buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
    //     buttonTextStyle: CustomTextStyles.titleSmallBlack900,
    //     onPressed: () {
    //       onTapSignUpWithGoogleButton(context);
    //     });

    return Container(
      width: 343.h,
      height: 64.v,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF959595)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Image.network(
              "https://img.icons8.com/color/48/google-logo.png",
            ),
          ),
          Text(
            "Sign up with Google",
            style: CustomTextStyles.titleLargeBlack900,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpWithAppleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign up with Apple",
        margin: EdgeInsets.only(left: 43.h, right: 44.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgApple1,
                height: 27.adaptSize,
                width: 27.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineOnPrimaryContainerTL15,
        onPressed: () {
          onTapSignUpWithAppleButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignUpWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign up with Facebook",
        margin: EdgeInsets.only(left: 43.h, right: 44.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 19.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook1,
                height: 27.adaptSize,
                width: 27.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineOnPrimaryContainerTL151,
        onPressed: () {
          onTapSignUpWithFacebookButton(context);
        });
  }

  Widget _buildLogin(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Iphone1415ProMaxSixScreen(
              // login: true,
              );
        }));
      },
      text: "Login",
      margin: EdgeInsets.symmetric(horizontal: 39.h),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomOutlinedButton(
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        text: "Create Account",
        margin: EdgeInsets.symmetric(horizontal: 43.h),
        onPressed: () {
          onTapCreateAccountButton(context);
        });
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapSignUpWithGoogleButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFiveScreen);
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapSignUpWithAppleButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFiveScreen);
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapSignUpWithFacebookButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFiveScreen);
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapCreateAccountButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFiveScreen);
  }
}
