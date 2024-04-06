import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_page/iphone_14_15_pro_max_eleven_page.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twenty_screen/iphone_14_15_pro_max_twenty_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_bottom_bar.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThirteenScreen extends StatefulWidget {
  final LatLng destination;
  final String rideId;
  final String pickup;
  final String drop;
  final String otp;
  Iphone1415ProMaxThirteenScreen(
      {Key? key,
      required this.pickup,
      required this.drop,
      required this.otp,
      required this.rideId,
      required this.destination})
      : super(key: key);

  @override
  State<Iphone1415ProMaxThirteenScreen> createState() =>
      _Iphone1415ProMaxThirteenScreenState();
}

class _Iphone1415ProMaxThirteenScreenState
    extends State<Iphone1415ProMaxThirteenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController controller = TextEditingController();

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
                  image: AssetImage(ImageConstant.imgGroup690),
                  fit: BoxFit.cover)),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(left: 21.h, top: 75.v, right: 21.h),
            child: Column(
              children: [
                CustomElevatedButton(
                    height: 40.v,
                    width: 211.h,
                    text: "Car ride OTP",
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: theme.textTheme.titleSmall!),
                SizedBox(height: 15.v),
                _buildCarRideDetails(context),
                SizedBox(height: 65.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 132.v,
                    width: 222.h,
                    margin: EdgeInsets.only(left: 74.h),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCar1,
                            height: 46.adaptSize,
                            width: 46.adaptSize,
                            alignment: Alignment.topRight),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                decoration: BoxDecoration(
                                    color: appTheme.black900,
                                    borderRadius:
                                        BorderRadius.circular(22.h)))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                child: Divider(color: appTheme.black900)))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCarRideDetails(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 23.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(left: 0),
              child: CustomPinCodeTextField(
                  controller: controller,
                  length: 4,
                  context: context,
                  onChanged: (value) {})),
          SizedBox(height: 22.v),
          CustomElevatedButton(
              height: 40.v,
              width: 91.h,
              text: "Start ride",
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: theme.textTheme.labelMedium!,
              onPressed: () {
                if (controller.text == widget.otp) {
                  onTapStartRide(context);
                } else {
                  Fluttertoast.showToast(msg: "Invalid Otp ${widget.otp}");
                }
              })
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

  /// Navigates to the iphone1415ProMaxFourteenTabContainerScreen when the action is triggered.
  onTapStartRide(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Iphone1415ProMaxTwentyScreen(
        destination: widget.destination,
        rideId: widget.rideId,
        pickup: widget.pickup,
        drop: widget.drop,
      );
    }));
  }
}
