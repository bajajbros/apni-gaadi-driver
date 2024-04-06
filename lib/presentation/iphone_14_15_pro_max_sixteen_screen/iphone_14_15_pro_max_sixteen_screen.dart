import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/chat/chat_screen.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/map/two_locations_map.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_page/iphone_14_15_pro_max_eleven_page.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_thirteen_screen/iphone_14_15_pro_max_thirteen_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_bottom_bar.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:latlong2/latlong.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixteenScreen extends StatelessWidget {
  final LatLng finalDestination;
  final LatLng destination;
  final String otp;
  final String pickup;
  final String drop;
  final String rideId;
  final String userNumber;
  Iphone1415ProMaxSixteenScreen(
      {Key? key,
      required this.userNumber,
      required this.rideId,
      required this.pickup,
      required this.drop,
      required this.otp,
      required this.destination,
      required this.finalDestination})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      body: Stack(
        children: [
          NavigationMap(destination),
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 75.v),
              child: Column(children: [
                CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Iphone1415ProMaxThirteenScreen(
                          destination: finalDestination,
                          rideId: rideId,
                          pickup: pickup,
                          drop: drop,
                          otp: otp,
                        );
                      }));
                    },
                    height: 40.v,
                    text: "Arrived",
                    margin: EdgeInsets.only(left: 15.h, right: 14.h),
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: theme.textTheme.titleSmall!),
                SizedBox(height: 15.v),
                _buildNinetyEightColumn(context),
                Spacer(flex: 40),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 78.v,
                        width: 91.h,
                        margin: EdgeInsets.only(left: 55.h),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCar1,
                              height: 46.adaptSize,
                              width: 46.adaptSize,
                              alignment: Alignment.topRight),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapView(context);
                                  },
                                  child: Container(
                                      height: 45.adaptSize,
                                      width: 45.adaptSize,
                                      decoration: BoxDecoration(
                                          color: appTheme.black900,
                                          borderRadius:
                                              BorderRadius.circular(22.h))))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 31.v),
                                  child: SizedBox(
                                      child: Divider(
                                          color: appTheme.black900,
                                          endIndent: 29.h))))
                        ]))),
                Spacer(flex: 59)
              ])),
        ],
      ),
    ));
  }

  /// Section Widget
  Widget _buildNinetyEightColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 12.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("Picking up varun", style: theme.textTheme.titleSmall),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(children: [
                          CustomIconButton(
                              height: 55.adaptSize,
                              width: 55.adaptSize,
                              padding: EdgeInsets.all(14.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup94)),
                          SizedBox(height: 6.v),
                          Text("Call",
                              style: CustomTextStyles.bodyMediumRegular15)
                        ]),
                        Spacer(),
                        InkWell(
                          onTap: () async {
                            SharedPreferences preferences =
                                await SharedPreferences.getInstance();
                            String? phone = preferences.getString("phone");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ChatScreen(
                                      chatName: "Customer",
                                      onlineStatus: "",
                                      number: userNumber,
                                      chatNumber: phone!);
                                },
                              ),
                            );
                          },
                          child: Column(children: [
                            CustomIconButton(
                                height: 55.adaptSize,
                                width: 55.adaptSize,
                                padding: EdgeInsets.all(14.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup97)),
                            SizedBox(height: 7.v),
                            Text("Message",
                                style: CustomTextStyles.bodyMediumRegular15)
                          ]),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 29.h),
                            child: InkWell(
                              onTap: () {
                                ApiMethods.insertRide(context,
                                    id: rideId,
                                    pickup: pickup,
                                    time: "",
                                    dropLocation: drop,
                                    cabType: "",
                                    fare: "",
                                    seat: "",
                                    status: "Cancelled",
                                    driver: "",
                                    driverph: "",
                                    driverRating: "",
                                    OTP: "",
                                    tip: "",
                                    email: "",
                                    functionStatus: "Cancelled",
                                    rideId: rideId,
                                    driverId: "");
                              },
                              child: Column(children: [
                                CustomIconButton(
                                    height: 55.adaptSize,
                                    width: 55.adaptSize,
                                    padding: EdgeInsets.all(14.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup95)),
                                SizedBox(height: 7.v),
                                Text("Cancel Trip",
                                    style: CustomTextStyles.bodyMediumRegular15)
                              ]),
                            ))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates to the iphone1415ProMaxEighteenScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxEighteenScreen);
  }
}
