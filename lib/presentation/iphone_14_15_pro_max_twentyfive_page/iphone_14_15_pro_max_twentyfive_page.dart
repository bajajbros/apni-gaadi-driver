import '../iphone_14_15_pro_max_twentyfive_page/widgets/userprofile_item_widget.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfivePage extends StatefulWidget {
  const Iphone1415ProMaxTwentyfivePage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxTwentyfivePageState createState() =>
      Iphone1415ProMaxTwentyfivePageState();
}

class Iphone1415ProMaxTwentyfivePageState
    extends State<Iphone1415ProMaxTwentyfivePage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProMaxTwentyfivePage> {
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
                        padding: EdgeInsets.only(left: 77.h),
                        child: Text(
                          "Mon, 16 Nov 19 - 23 Nov 19",
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
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 33.h,
                            right: 45.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 79.v,
                                width: 40.h,
                                margin: EdgeInsets.only(top: 15.v),
                                decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Container(
                                height: 60.v,
                                width: 40.h,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 34.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.greenA700,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Container(
                                height: 94.v,
                                width: 40.h,
                                margin: EdgeInsets.only(left: 10.h),
                                decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Container(
                                height: 32.v,
                                width: 40.h,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 62.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Container(
                                height: 89.v,
                                width: 40.h,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 5.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Container(
                                height: 65.v,
                                width: 40.h,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 29.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                              ),
                              Container(
                                height: 74.v,
                                width: 40.h,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 20.v,
                                ),
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
                        indent: 33.h,
                        endIndent: 47.h,
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 46.h,
                          right: 60.h,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "M",
                              style: CustomTextStyles.bodyMediumRegular15,
                            ),
                            Spacer(
                              flex: 16,
                            ),
                            Text(
                              "T",
                              style: CustomTextStyles.bodyMediumGreenA700,
                            ),
                            Spacer(
                              flex: 15,
                            ),
                            Text(
                              "W",
                              style: CustomTextStyles.bodyMediumRegular15,
                            ),
                            Spacer(
                              flex: 16,
                            ),
                            Text(
                              "T",
                              style: CustomTextStyles.bodyMediumRegular15,
                            ),
                            Spacer(
                              flex: 17,
                            ),
                            Text(
                              "F",
                              style: CustomTextStyles.bodyMediumRegular15,
                            ),
                            Spacer(
                              flex: 17,
                            ),
                            Text(
                              "S",
                              style: CustomTextStyles.bodyMediumRegular15,
                            ),
                            Spacer(
                              flex: 17,
                            ),
                            Text(
                              "S",
                              style: CustomTextStyles.bodyMediumRegular15,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 43.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      style:
                                          CustomTextStyles.bodyMediumRegular15,
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
                                      style:
                                          CustomTextStyles.bodyMediumRegular15,
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
                      _buildUserProfile(context),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(right: 34.h),
                        child: _buildTime(
                          context,
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection1(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection2(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection3(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection4(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection5(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection6(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection7(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection8(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection9(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection10(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection11(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection12(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection13(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection14(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection15(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection16(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection17(context),
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
                          time: "3:33",
                          varun: "Varun",
                          price: "₹ 120",
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          _buildPmButtonSection18(context),
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
        return UserprofileItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection1(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection2(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection3(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection4(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection5(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection6(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection7(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection8(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection9(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection10(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection11(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection12(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection13(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection14(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection15(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection16(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection17(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Section Widget
  Widget _buildPmButtonSection18(BuildContext context) {
    return CustomElevatedButton(
      width: 47.h,
      text: "PM",
    );
  }

  /// Common widget
  Widget _buildTime(
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
