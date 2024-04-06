import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_page/iphone_14_15_pro_max_eleven_page.dart';
import 'package:apni_gaadi_driver/widgets/custom_bottom_bar.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFifteenScreen extends StatelessWidget {
  Iphone1415ProMaxFifteenScreen({Key? key}) : super(key: key);

  TextEditingController locationSixController = TextEditingController();

  TextEditingController locationSixController1 = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup690),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 40.h, top: 75.v, right: 40.h),
                    child: Column(children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 14.h),
                          padding: EdgeInsets.all(5.h),
                          decoration: AppDecoration.fillGray500.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 62.h, top: 6.v, bottom: 4.v),
                                    child: Text("Tap To Accept Share Ride",
                                        style: theme.textTheme.titleSmall)),
                                Container(
                                    width: 30.adaptSize,
                                    margin: EdgeInsets.only(left: 33.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6.h, vertical: 5.v),
                                    decoration: AppDecoration.fillBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                    child: Text("10",
                                        style: theme.textTheme.titleSmall))
                              ])),
                      SizedBox(height: 15.v),
                      _buildTapToAcceptShareSection(context),
                      SizedBox(height: 10.v),
                      _buildLocationSixSection(context),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildTapToAcceptShareSection(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTapToAcceptShareSection(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
            decoration: AppDecoration.fillBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Row(children: [
              Container(
                  width: 172.h,
                  margin: EdgeInsets.only(top: 8.v, bottom: 11.v),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        child: Column(children: [
                          Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.red700,
                                  borderRadius: BorderRadius.circular(8.h))),
                          SizedBox(height: 8.v),
                          Container(
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.red700,
                                  borderRadius: BorderRadius.circular(3.h))),
                          SizedBox(height: 7.v),
                          Container(
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.red700,
                                  borderRadius: BorderRadius.circular(3.h))),
                          SizedBox(height: 9.v),
                          Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.red700,
                                  borderRadius: BorderRadius.circular(8.h)))
                        ])),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("Noida Sec 21",
                                      style: theme.textTheme.bodySmall)),
                              CustomTextFormField(
                                  width: 142.h,
                                  controller: locationSixController,
                                  hintText: "Pari Chowk",
                                  hintStyle: theme.textTheme.titleSmall!,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 5.h)),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("Noida Sec 43",
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 1.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Noida City Center",
                                      style: theme.textTheme.titleSmall))
                            ]))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: SizedBox(
                      height: 106.v,
                      child: VerticalDivider(
                          width: 2.h,
                          thickness: 2.v,
                          color: appTheme.gray500))),
              Padding(
                  padding: EdgeInsets.only(left: 7.h, top: 19.v, bottom: 19.v),
                  child: _buildTimeSection(context,
                      timeLabel: "Time:",
                      timeValue: "31 mins",
                      distanceLabel: "Distance:",
                      distanceValue: "20 kms"))
            ])));
  }

  /// Section Widget
  Widget _buildLocationSixSection(BuildContext context) {
    return SizedBox(
        height: 266.v,
        width: 350.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCar1,
              height: 46.adaptSize,
              width: 46.adaptSize,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 72.h, bottom: 92.v)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  margin: EdgeInsets.only(left: 55.h, bottom: 7.v),
                  decoration: BoxDecoration(
                      color: appTheme.black900,
                      borderRadius: BorderRadius.circular(22.h)))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 38.v),
                  child: SizedBox(
                      child: Divider(color: appTheme.black900, indent: 93.h)))),
          Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                  onTap: () {
                    onTapTwenty(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 138.v),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 11.v),
                      decoration: AppDecoration.fillBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(children: [
                        Container(
                            width: 172.h,
                            margin: EdgeInsets.only(top: 8.v, bottom: 11.v),
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.v),
                                  child: Column(children: [
                                    Container(
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.red700,
                                            borderRadius:
                                                BorderRadius.circular(8.h))),
                                    SizedBox(height: 8.v),
                                    Container(
                                        height: 6.adaptSize,
                                        width: 6.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.red700,
                                            borderRadius:
                                                BorderRadius.circular(3.h))),
                                    SizedBox(height: 7.v),
                                    Container(
                                        height: 6.adaptSize,
                                        width: 6.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.red700,
                                            borderRadius:
                                                BorderRadius.circular(3.h))),
                                    SizedBox(height: 9.v),
                                    Container(
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.red700,
                                            borderRadius:
                                                BorderRadius.circular(8.h)))
                                  ])),
                              Padding(
                                  padding: EdgeInsets.only(left: 14.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("Noida Sec 21",
                                                style:
                                                    theme.textTheme.bodySmall)),
                                        CustomTextFormField(
                                            width: 142.h,
                                            controller: locationSixController1,
                                            hintText: "Pari Chowk",
                                            hintStyle:
                                                theme.textTheme.titleSmall!,
                                            textInputAction:
                                                TextInputAction.done,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 5.h)),
                                        SizedBox(height: 7.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("Noida Sec 43",
                                                style:
                                                    theme.textTheme.bodySmall)),
                                        SizedBox(height: 1.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("Noida City Center",
                                                style:
                                                    theme.textTheme.titleSmall))
                                      ]))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: SizedBox(
                                height: 106.v,
                                child: VerticalDivider(
                                    width: 2.h,
                                    thickness: 2.v,
                                    color: appTheme.gray500))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 7.h, top: 19.v, bottom: 19.v),
                            child: _buildTimeSection(context,
                                timeLabel: "Time:",
                                timeValue: "31 mins",
                                distanceLabel: "Distance:",
                                distanceValue: "20 kms"))
                      ])))),
          Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                  onTap: () {
                    onTapTwentyOne(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 138.v),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 11.v),
                      decoration: AppDecoration.fillBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 8.v, bottom: 11.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 8.v),
                                            child: Column(children: [
                                              Container(
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.red700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.h))),
                                              SizedBox(height: 8.v),
                                              Container(
                                                  height: 6.adaptSize,
                                                  width: 6.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.red700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.h)))
                                            ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 19.h, bottom: 6.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Noida Sec 21",
                                                      style: theme
                                                          .textTheme.bodySmall),
                                                  Text("Pari Chowk",
                                                      style: theme
                                                          .textTheme.titleSmall)
                                                ]))
                                      ]),
                                  SizedBox(height: 4.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                          width: 142.h,
                                          child: Divider(
                                              color: appTheme.gray500))),
                                  SizedBox(height: 1.v),
                                  Container(
                                      height: 6.adaptSize,
                                      width: 6.adaptSize,
                                      margin: EdgeInsets.only(left: 5.h),
                                      decoration: BoxDecoration(
                                          color: appTheme.red700,
                                          borderRadius:
                                              BorderRadius.circular(3.h))),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 16.adaptSize,
                                            width: 16.adaptSize,
                                            margin: EdgeInsets.only(
                                                top: 8.v, bottom: 9.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.red700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8.h))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 19.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Noida Sec 43",
                                                      style: theme
                                                          .textTheme.bodySmall),
                                                  SizedBox(height: 1.v),
                                                  Text("Noida City Center",
                                                      style: theme
                                                          .textTheme.titleSmall)
                                                ]))
                                      ])
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: SizedBox(
                                height: 106.v,
                                child: VerticalDivider(
                                    width: 2.h,
                                    thickness: 2.v,
                                    color: appTheme.gray500))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 7.h, top: 19.v, bottom: 19.v),
                            child: _buildTimeSection(context,
                                timeLabel: "Time:",
                                timeValue: "31 mins",
                                distanceLabel: "Distance:",
                                distanceValue: "20 kms"))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildTimeSection(
    BuildContext context, {
    required String timeLabel,
    required String timeValue,
    required String distanceLabel,
    required String distanceValue,
  }) {
    return Column(children: [
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
                        child: Text(timeLabel,
                            style: theme.textTheme.bodySmall!.copyWith(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1)))),
                    Text(timeValue,
                        style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1)))
                  ]))),
      SizedBox(height: 34.v),
      SizedBox(
          width: 104.h,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Text(distanceLabel,
                    style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(1)))),
            Text(distanceValue,
                style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))
          ]))
    ]);
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

  /// Navigates to the iphone1415ProMaxSixteenScreen when the action is triggered.
  onTapTapToAcceptShareSection(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxSixteenScreen);
  }

  /// Navigates to the iphone1415ProMaxSixteenScreen when the action is triggered.
  onTapTwenty(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxSixteenScreen);
  }

  /// Navigates to the iphone1415ProMaxSixteenScreen when the action is triggered.
  onTapTwentyOne(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxSixteenScreen);
  }
}
