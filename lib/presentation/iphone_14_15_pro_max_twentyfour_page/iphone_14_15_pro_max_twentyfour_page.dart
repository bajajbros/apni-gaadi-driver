import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfourPage extends StatefulWidget {
  const Iphone1415ProMaxTwentyfourPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxTwentyfourPageState createState() =>
      Iphone1415ProMaxTwentyfourPageState();
}

class Iphone1415ProMaxTwentyfourPageState
    extends State<Iphone1415ProMaxTwentyfourPage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProMaxTwentyfourPage> {
  TextEditingController editTextController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 129.h),
                        child: Text(
                          "Mon, 16 Nov 19",
                          style: CustomTextStyles.titleMediumMedium,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(left: 154.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "₹",
                                style: theme.textTheme.headlineSmall,
                              ),
                              TextSpan(
                                text: " 1,514",
                                style: CustomTextStyles
                                    .headlineSmallOnPrimaryContainer_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 43.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.v,
                                        bottom: 3.v,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "15",
                                            style: theme.textTheme.titleLarge,
                                          ),
                                          SizedBox(height: 10.v),
                                          Text(
                                            "Trips",
                                            style: CustomTextStyles
                                                .bodyMediumRegular15,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(
                                      flex: 36,
                                    ),
                                    SizedBox(
                                      height: 68.v,
                                      child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        color: appTheme.gray500,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 31,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 16.v),
                                      child: Column(
                                        children: [
                                          Text(
                                            "5:30",
                                            style: theme.textTheme.titleLarge,
                                          ),
                                          SizedBox(height: 8.v),
                                          Text(
                                            "Online hrs",
                                            style: CustomTextStyles
                                                .bodyMediumRegular15,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(
                                      flex: 32,
                                    ),
                                    SizedBox(
                                      height: 68.v,
                                      child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        color: appTheme.gray500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 28.h,
                                  bottom: 4.v,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "₹ 120",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    SizedBox(height: 20.v),
                                    Text(
                                      "Cash Tips",
                                      style:
                                          CustomTextStyles.bodyMediumRegular15,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 45.v),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "Ride History",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 27.v),
                      _buildRideHistoryColumn1(context),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildRideHistoryRow1(context),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildRideHistoryRow2(context),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildRideHistoryRow3(context),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildRideHistoryRow4(context),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 4.v),
                      _buildEditText(context),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton5(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton6(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton7(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton8(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton9(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton10(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton11(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton12(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton13(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton14(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton15(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton16(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton17(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton18(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton19(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton20(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton21(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildRideHistoryRow(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildRideHistoryButton22(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Paid Online",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 61.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryColumn1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 34.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 151.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    children: [
                      Text(
                        "3:33",
                        style: CustomTextStyles.titleLargeRegular,
                      ),
                      SizedBox(height: 4.v),
                      _buildRideHistoryButton(context),
                    ],
                  ),
                ),
                _buildRideHistoryColumn(
                  context,
                  userName: "Varun",
                  paidOnlineText: "Paid Online",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 29.v,
            ),
            child: Text(
              "₹ 120",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton1(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 34.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 151.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    children: [
                      Text(
                        "3:33",
                        style: CustomTextStyles.titleLargeRegular,
                      ),
                      SizedBox(height: 4.v),
                      _buildRideHistoryButton1(context),
                    ],
                  ),
                ),
                _buildRideHistoryColumn(
                  context,
                  userName: "Varun",
                  paidOnlineText: "Paid Online",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 29.v,
            ),
            child: Text(
              "₹ 120",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton2(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryRow2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 34.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 151.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    children: [
                      Text(
                        "3:33",
                        style: CustomTextStyles.titleLargeRegular,
                      ),
                      SizedBox(height: 4.v),
                      _buildRideHistoryButton2(context),
                    ],
                  ),
                ),
                _buildRideHistoryColumn(
                  context,
                  userName: "Varun",
                  paidOnlineText: "Paid Online",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 29.v,
            ),
            child: Text(
              "₹ 120",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton3(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryRow3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 34.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 151.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    children: [
                      Text(
                        "3:33",
                        style: CustomTextStyles.titleLargeRegular,
                      ),
                      SizedBox(height: 4.v),
                      _buildRideHistoryButton3(context),
                    ],
                  ),
                ),
                _buildRideHistoryColumn(
                  context,
                  userName: "Varun",
                  paidOnlineText: "Paid Online",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 29.v,
            ),
            child: Text(
              "₹ 120",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton4(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryRow4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 34.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 151.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    children: [
                      Text(
                        "3:33",
                        style: CustomTextStyles.titleLargeRegular,
                      ),
                      SizedBox(height: 4.v),
                      _buildRideHistoryButton4(context),
                    ],
                  ),
                ),
                _buildRideHistoryColumn(
                  context,
                  userName: "Varun",
                  paidOnlineText: "Paid Online",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 29.v,
            ),
            child: Text(
              "₹ 120",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(
      width: 47.h,
      controller: editTextController,
      textInputAction: TextInputAction.done,
      borderDecoration: TextFormFieldStyleHelper.fillBlack,
      filled: true,
      fillColor: appTheme.black900,
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton5(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton6(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton7(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton8(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton9(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton10(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton11(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton12(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton13(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton14(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton15(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton16(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton17(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton18(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton19(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton20(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton21(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildRideHistoryButton22(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Common widget
  Widget _buildRideHistoryColumn(
    BuildContext context, {
    required String userName,
    required String paidOnlineText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          paidOnlineText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRideHistoryRow(
    BuildContext context, {
    required String time,
    required String varun,
    required String price,
  }) {
    return Row(
      children: [
        Text(
          time,
          style: CustomTextStyles.titleLargeRegular.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
        Spacer(
          flex: 14,
        ),
        Text(
          varun,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
        Spacer(
          flex: 85,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Text(
            price,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
