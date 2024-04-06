import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/map/two_locations_map.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_page/iphone_14_15_pro_max_eleven_page.dart';
import 'package:apni_gaadi_driver/widgets/custom_bottom_bar.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class Iphone1415ProMaxTwentyScreen extends StatelessWidget {
  final LatLng destination;
  final String rideId;
  final String pickup;
  final String drop;
  Iphone1415ProMaxTwentyScreen(
      {Key? key,
      required this.pickup,
      required this.drop,
      required this.rideId,
      required this.destination})
      : super(
          key: key,
        );

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
              padding: EdgeInsets.symmetric(
                horizontal: 40.h,
                vertical: 75.v,
              ),
              child: Column(
                children: [
                  CustomElevatedButton(
                    onPressed: () {
                      _showConfirmationDialog(context);
                    },
                    height: 40.v,
                    text: "Complete",
                    margin: EdgeInsets.only(
                      left: 15.h,
                      right: 14.h,
                    ),
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: theme.textTheme.titleSmall!,
                  ),
                  SizedBox(height: 15.v),
                  _buildSeven(context),
                  Spacer(
                    flex: 52,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 71.v,
                      width: 83.h,
                      margin: EdgeInsets.only(right: 18.h),
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
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 9.v),
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
                  ),
                  Spacer(
                    flex: 47,
                  ),
                ],
              ),
            ),
          ],
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: appTheme.blueGray900,
          title: Text('Confirm Ride Completion'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to complete the ride?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Perform action when cancel button is pressed
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                ApiMethods.insertRide(context,
                    pickup: "",
                    time: "",
                    id: rideId,
                    dropLocation: "",
                    cabType: "",
                    fare: "",
                    seat: "",
                    status: "Finished",
                    driver: "",
                    driverph: "",
                    driverRating: "",
                    OTP: "",
                    tip: "",
                    email: "",
                    functionStatus: "Finished",
                    rideId: rideId,
                    driverId: "");
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: Column(
                        children: [
                          Container(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.gray500,
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
                      padding: EdgeInsets.only(
                        left: 19.h,
                        bottom: 6.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "",
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            pickup,
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 142.h,
                    child: Divider(
                      color: appTheme.gray500,
                    ),
                  ),
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
                        color: appTheme.red700,
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
                            "",
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            drop,
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
                Container(
                  width: 107.h,
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: Text(
                          "Time left:",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Text(
                        "1 mins",
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 34.v),
                SizedBox(
                  width: 127.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: Text(
                          "Distance left:",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Text(
                        "0.2 kms",
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
