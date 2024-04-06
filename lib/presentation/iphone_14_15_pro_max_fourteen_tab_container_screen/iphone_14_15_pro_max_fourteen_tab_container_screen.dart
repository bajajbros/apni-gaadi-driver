import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_page/iphone_14_15_pro_max_eleven_page.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_fourteen_page/iphone_14_15_pro_max_fourteen_page.dart';
import 'package:apni_gaadi_driver/widgets/custom_bottom_bar.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxFourteenTabContainerScreen extends StatefulWidget {
  const Iphone1415ProMaxFourteenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxFourteenTabContainerScreenState createState() =>
      Iphone1415ProMaxFourteenTabContainerScreenState();
}

class Iphone1415ProMaxFourteenTabContainerScreenState
    extends State<Iphone1415ProMaxFourteenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

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
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 75.v),
                CustomElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(
                      //     context, AppRoutes.iphone1415ProMaxSixteenScreen);
                    },
                    height: 40.v,
                    text: "Tap to Accept",
                    margin: EdgeInsets.only(left: 15.h, right: 14.h),
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: theme.textTheme.titleSmall!),
                SizedBox(
                  height: 746.v,
                  child: Iphone1415ProMaxFourteenPage(),
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
