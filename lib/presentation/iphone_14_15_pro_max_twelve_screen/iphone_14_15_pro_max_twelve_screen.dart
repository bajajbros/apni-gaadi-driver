import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_page/iphone_14_15_pro_max_eleven_page.dart';
import 'package:apni_gaadi_driver/widgets/custom_bottom_bar.dart';
import 'package:apni_gaadi_driver/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxTwelveScreen extends StatelessWidget {
  Iphone1415ProMaxTwelveScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
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
          child: SizedBox(
            height: 861.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup15,
                  height: 130.adaptSize,
                  width: 130.adaptSize,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: 53.h,
                    top: 343.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup16,
                  height: 462.v,
                  width: 234.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 139.v),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 89.h,
                      vertical: 109.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 676.v),
                          child: Text(
                            "You’re Offline",
                            style: CustomTextStyles.headlineLargeRed900,
                          ),
                        ),
                        CustomSwitch(
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 681.v,
                          ),
                          value: isSelectedSwitch,
                          onChange: (value) {
                            isSelectedSwitch = value;
                          },
                        ),
                      ],
                    ),
                  ),
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
