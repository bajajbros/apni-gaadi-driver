import '../iphone_14_15_pro_max_twentysix_page/widgets/userprofile1_item_widget.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentysixPage extends StatefulWidget {
  const Iphone1415ProMaxTwentysixPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxTwentysixPageState createState() =>
      Iphone1415ProMaxTwentysixPageState();
}

class Iphone1415ProMaxTwentysixPageState
    extends State<Iphone1415ProMaxTwentysixPage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProMaxTwentysixPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
                        padding: EdgeInsets.only(left: 79.h),
                        child: Text(
                          "Mon, 16 Nov 19 - 23 Feb 19",
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
                      SizedBox(height: 26.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 101.h,
                            right: 47.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 60.v,
                                width: 40.h,
                                margin: EdgeInsets.only(top: 34.v),
                                decoration: BoxDecoration(
                                  color: appTheme.greenA700,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 36,
                              ),
                              Container(
                                height: 94.v,
                                width: 40.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 31,
                              ),
                              Container(
                                height: 32.v,
                                width: 40.h,
                                margin: EdgeInsets.only(top: 62.v),
                                decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 31,
                              ),
                              Container(
                                height: 89.v,
                                width: 40.h,
                                margin: EdgeInsets.only(top: 5.v),
                                decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: appTheme.gray500,
                        indent: 34.h,
                        endIndent: 47.h,
                      ),
                      SizedBox(height: 8.v),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 33.h,
                            right: 43.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 103.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Week",
                                          style: CustomTextStyles
                                              .bodyMediumRegular15,
                                        ),
                                        Text(
                                          "1 nd",
                                          style: CustomTextStyles
                                              .bodyMediumGreenA700,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 12.v),
                                  Container(
                                    width: 81.h,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 11.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 9.v,
                                            bottom: 4.v,
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                "15",
                                                style:
                                                    theme.textTheme.titleLarge,
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
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 26.h,
                                  bottom: 16.v,
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 18.h),
                                        child: Text(
                                          "2 nd",
                                          style: CustomTextStyles
                                              .bodyMediumRegular15,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 12.v),
                                    Text(
                                      "5:30",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    SizedBox(height: 8.v),
                                    Text(
                                      "Online hrs",
                                      style:
                                          CustomTextStyles.bodyMediumRegular15,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 106.h,
                                      margin: EdgeInsets.only(right: 9.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "3 nd",
                                            style: CustomTextStyles
                                                .bodyMediumRegular15,
                                          ),
                                          Text(
                                            "4 nd",
                                            style: CustomTextStyles
                                                .bodyMediumRegular15,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 68.v,
                                            child: VerticalDivider(
                                              width: 2.h,
                                              thickness: 2.v,
                                              color: appTheme.gray500,
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
                                                  style: theme
                                                      .textTheme.titleLarge,
                                                ),
                                                SizedBox(height: 20.v),
                                                Text(
                                                  "Cash Tips",
                                                  style: CustomTextStyles
                                                      .bodyMediumRegular15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
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
                      _buildUserProfile(context),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText6(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText7(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText8(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText9(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText10(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText11(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText12(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText13(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText14(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText15(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText16(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText17(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText18(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText19(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText20(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText21(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText22(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText23(context),
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
                        child: _buildTime(
                          context,
                          timeText: "3:33",
                          varunText: "Varun",
                          priceText: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildButtonText24(context),
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
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6.5.v),
          child: SizedBox(
            width: 357.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return Userprofile1ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildButtonText6(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText7(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText8(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText9(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText10(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText11(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText12(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText13(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText14(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText15(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText16(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText17(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText18(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText19(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText20(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText21(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText22(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText23(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildButtonText24(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String timeText,
    required String varunText,
    required String priceText,
  }) {
    return Row(
      children: [
        Text(
          timeText,
          style: CustomTextStyles.titleLargeRegular.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
        Spacer(
          flex: 14,
        ),
        Text(
          varunText,
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
            priceText,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
