import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_page/iphone_14_15_pro_max_eleven_page.dart';
import 'package:apni_gaadi_driver/widgets/custom_bottom_bar.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxEighteenScreen extends StatelessWidget {
  Iphone1415ProMaxEighteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController parichowkController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup690,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 75.v,
            ),
            child: Column(
              children: [
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppRoutes.iphone1415ProMaxNineteenScreen);
                  },
                  height: 40.v,
                  text: "Start",
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 14.h,
                  ),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
                SizedBox(height: 15.v),
                _buildStartButtonRow(context),
                Spacer(
                  flex: 34,
                ),
                SizedBox(
                  height: 197.v,
                  width: 304.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCar153x53,
                        height: 53.adaptSize,
                        width: 53.adaptSize,
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.v),
                          child: SizedBox(
                            child: Divider(
                              color: appTheme.black900,
                              endIndent: 12.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          margin: EdgeInsets.only(right: 2.h),
                          decoration: BoxDecoration(
                            color: appTheme.redA70002,
                            borderRadius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags1,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 32.v),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 22.v),
                          child: SizedBox(
                            child: Divider(
                              color: theme.colorScheme.primaryContainer,
                              endIndent: 14.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 65,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildStartButtonRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8.v,
                        bottom: 6.v,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.red700,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Container(
                            height: 6.adaptSize,
                            width: 6.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.gray500,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "Noida Sec 21",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "Pari Chowk",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.only(left: 5.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray500,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        top: 8.v,
                        bottom: 9.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Noida Sec 43",
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "Noida City Center",
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: SizedBox(
              height: 106.v,
              child: VerticalDivider(
                width: 2.h,
                thickness: 2.v,
                color: appTheme.gray500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 19.v,
              bottom: 19.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 96.h,
                    margin: EdgeInsets.only(left: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text(
                            "Time:",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Text(
                          "31 mins",
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 34.v),
                SizedBox(
                  width: 104.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: Text(
                          "Distance:",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Text(
                        "20 kms",
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone1415ProMaxElevenPage;
      case BottomBarEnum.Search:
        return AppRoutes.iphone1415ProMaxElevenPage;
      case BottomBarEnum.History:
        return AppRoutes.iphone1415ProMaxElevenPage;
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
      default:
        return DefaultWidget();
    }
  }
}
