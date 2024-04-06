import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxSixScreen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "iPhone 14 & 15 Pro Max - Seven",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.iphone1415ProMaxSevenScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "iPhone 14 & 15 Pro Max - Eight",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.iphone1415ProMaxEightScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "iPhone 14 & 15 Pro Max - Nine",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.iphone1415ProMaxNineScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "iPhone 14 & 15 Pro Max - Ten",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.iphone1415ProMaxTenScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle:
                        //       "iPhone 14 & 15 Pro Max - Eleven - Container",
                        //   onTapScreenTitle: () => onTapScreenTitle(context,
                        //       AppRoutes.iphone1415ProMaxElevenContainerScreen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxTwelveScreen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "iPhone 14 & 15 Pro Max - Thirteen",
                        //   onTapScreenTitle: () => onTapScreenTitle(context,
                        //       AppRoutes.iphone1415ProMaxThirteenScreen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "iPhone 14 & 15 Pro Max - Fourteen - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .iphone1415ProMaxFourteenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxFifteenScreen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "iPhone 14 & 15 Pro Max - Sixteen",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.iphone1415ProMaxSixteenScreen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1415ProMaxSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1415ProMaxEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Nineteen",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1415ProMaxNineteenScreen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "iPhone 14 & 15 Pro Max - Twenty",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.iphone1415ProMaxTwentyScreen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - TwentyOne",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1415ProMaxTwentyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - TwentyThree",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1415ProMaxTwentythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "iPhone 14 & 15 Pro Max - TwentyFive - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .iphone1415ProMaxTwentyfiveTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - TwentySeven",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1415ProMaxTwentysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - TwentyEight",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1415ProMaxTwentyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - TwentyNine",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1415ProMaxTwentynineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro Max - Thirty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxThirtyScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
