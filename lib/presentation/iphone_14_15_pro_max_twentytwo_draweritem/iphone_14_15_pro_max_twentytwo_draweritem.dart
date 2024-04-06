import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/backend/modals.dart';
import 'package:apni_gaadi_driver/chat/chat_list.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentyeight_screen/iphone_14_15_pro_max_twentyeight_screen.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentytwo_draweritem/ride_history.dart';
import 'package:apni_gaadi_driver/widgets/custom_switch.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentytwoDraweritem extends StatelessWidget {
  Iphone1415ProMaxTwentytwoDraweritem({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  TextEditingController paymentHistoryController = TextEditingController();

  TextEditingController rideHistoryController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  TextEditingController supportController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 365.h,
        padding: EdgeInsets.symmetric(vertical: 58.v),
        decoration: AppDecoration.gradientOnPrimaryToGray,
        child: Column(
          children: [
            SizedBox(height: 29.v),
            FutureBuilder<List<DriverInfo>>(
                future: ApiMethods.displayDriverInformation(status: "Driver"),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 33.h),
                        child: Row(
                          children: [
                            CircleAvatar(
                              onBackgroundImageError: (exception, stackTrace) {
                                Fluttertoast.showToast(
                                    msg: "Failed to load image");
                              },
                              radius: 36,
                              backgroundColor: appTheme.cyan200,
                              backgroundImage:
                                  NetworkImage(snapshot.data![0].profilepic),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 24.h,
                                top: 37.v,
                                bottom: 15.v,
                              ),
                              child: Text(
                                snapshot.data![0].name,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return Container();
                }),
            SizedBox(height: 14.v),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Padding(
            //     padding: EdgeInsets.only(left: 33.h),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.only(bottom: 1.v),
            //           child: Text(
            //             "You’re Online",
            //             style: CustomTextStyles.titleLargeGreenA700,
            //           ),
            //         ),
            //         CustomSwitch(
            //           margin: EdgeInsets.only(left: 15.h),
            //           value: isSelectedSwitch,
            //           onChange: (value) {
            //             isSelectedSwitch = value;
            //           },
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: 14.v),
            Divider(
              color: appTheme.black900,
            ),
            SizedBox(height: 16.v),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 266.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.fillGray700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "My Account Information",
                  style: CustomTextStyles.titleSmallMedium,
                ),
              ),
            ),
            SizedBox(height: 17.v),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (context) {
                      return Iphone1415ProMaxTwentyeightScreen();
                    });
                // Navigator.pushNamed(
                //     context, AppRoutes.iphone1415ProMaxTwentyeightScreen);
              },
              child: Container(
                width: 266.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.fillGray700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "My Account Wallet",
                  style: CustomTextStyles.titleSmallMedium,
                ),
              ),
            ),
            SizedBox(height: 17.v),
            Container(
              width: 266.h,
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillGray700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Text(
                "Payment History",
                style: CustomTextStyles.titleSmallMedium,
              ),
            ),
            SizedBox(height: 17.v),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Iphone14TwentynineScreen();
                    });
              },
              child: Container(
                width: 266.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.fillGray700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "Ride History",
                  style: CustomTextStyles.titleSmallMedium,
                ),
              ),
            ),
            SizedBox(height: 17.v),
            InkWell(
              onTap: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                String? phone = preferences.getString("phone");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChatListScreen(phone: phone!);
                }));
              },
              child: Container(
                width: 266.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.fillGray700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "Messages",
                  style: CustomTextStyles.titleSmallMedium,
                ),
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              width: 266.h,
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillGray700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Text(
                "Support",
                style: CustomTextStyles.titleSmallMedium,
              ),
            ),
            Spacer(),
            Divider(
              color: appTheme.black900,
            ),
            SizedBox(height: 38.v),
            _buildDoMore(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentHistory(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: paymentHistoryController,
        hintText: "Payment History",
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray700,
      ),
    );
  }

  /// Section Widget
  Widget _buildRideHistory(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: rideHistoryController,
        hintText: "Ride History",
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray700,
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: messageController,
        hintText: "Messages",
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray700,
      ),
    );
  }

  /// Section Widget
  Widget _buildSupport(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: supportController,
        hintText: "Support",
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray700,
      ),
    );
  }

  /// Section Widget
  Widget _buildDoMore(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do more",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 8.v),
          Text(
            "Make money by driving",
            style: CustomTextStyles.bodyMediumRegular,
          ),
          SizedBox(height: 7.v),
          Text(
            "Rate us on Playstore",
            style: CustomTextStyles.bodyMediumRegular,
          ),
          SizedBox(height: 7.v),
          Text(
            "Apni-Gaadi.com",
            style: CustomTextStyles.titleMedium17,
          ),
        ],
      ),
    );
  }
}
