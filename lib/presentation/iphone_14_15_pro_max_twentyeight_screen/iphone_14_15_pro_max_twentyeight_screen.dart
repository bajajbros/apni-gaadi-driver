import 'package:apni_gaadi_driver/chat/add_bank.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_container_screen/iphone_14_15_pro_max_eleven_container_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../iphone_14_15_pro_max_twentyeight_screen/widgets/list_item_widget.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxTwentyeightScreen extends StatelessWidget {
  const Iphone1415ProMaxTwentyeightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 14.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(right: 102.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.img09LeftChevron,
                                height: 28.v,
                                width: 26.h,
                                onTap: () {
                                  onTapImgLeftChevron(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 77.h),
                                child: Text("My Account wallet",
                                    style: theme.textTheme.titleLarge!
                                        .copyWith(color: Colors.black)))
                          ])),
                      SizedBox(height: 30.v),
                      _buildFortyThree(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("Other Payments methods",
                              style: theme.textTheme.titleLarge!
                                  .copyWith(color: Colors.black))),
                      SizedBox(height: 21.v),
                      Group44(),
                      SizedBox(height: 27.v),
                      CustomElevatedButton(
                          height: 40.v,
                          width: 86.h,
                          text: "Help",
                          margin: EdgeInsets.only(left: 7.h),
                          buttonStyle: CustomButtonStyles.fillLightGreenTL8,
                          buttonTextStyle: theme.textTheme.labelMedium!),
                      Spacer(),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 9.v,
                              width: 131.h,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(4.h))))
                    ]))));
  }

  /// Section Widget
  Widget _buildFortyThree(BuildContext context) {
    return Container(
        width: 372.h,
        margin: EdgeInsets.symmetric(horizontal: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 23.v),
        decoration: AppDecoration.fillBluegray90004
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text("Balance", style: theme.textTheme.titleSmall)),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "₹ ",
                            style: CustomTextStyles.titleLargeOnError_1),
                        TextSpan(text: "0", style: theme.textTheme.titleLarge)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 16.v),
              SizedBox(
                  width: 204.h,
                  child: Text(
                      "Add the bank account where you want to receive payments",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumRegular15)),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MagicCoinsRedeemScreen(email: "");
                    }));
                  },
                  height: 38.v,
                  width: 181.h,
                  text: "Add bank account",
                  buttonStyle: CustomButtonStyles.fillLightGreenTL8,
                  buttonTextStyle: theme.textTheme.labelMedium!),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return SizedBox(
        height: 141.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 12.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListItemWidget();
            }));
  }

  /// Navigates to the iphone1415ProMaxElevenContainerScreen when the action is triggered.
  onTapImgLeftChevron(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? phone = preferences.getString("phone");
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Iphone1415ProMaxElevenContainerScreen(phone: phone!);
    }));
  }
}
