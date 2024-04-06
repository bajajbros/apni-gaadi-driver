import '../iphone_14_15_pro_max_twentynine_screen/widgets/userprofile2_item_widget.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxTwentynineScreen extends StatelessWidget {
  const Iphone1415ProMaxTwentynineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 79.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 22.h, right: 26.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.img09LeftChevron,
                                          height: 27.v,
                                          width: 26.h,
                                          onTap: () {
                                            onTapImgArrowLeft(context);
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(left: 118.h),
                                          child: Text("Messages",
                                              style:
                                                  theme.textTheme.titleLarge))
                                    ]),
                                    SizedBox(height: 33.v),
                                    Container(
                                        height: 1092.v,
                                        width: 379.h,
                                        margin: EdgeInsets.only(left: 3.h),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child: Container(
                                                      height: 9.v,
                                                      width: 131.h,
                                                      margin: EdgeInsets.only(
                                                          bottom: 313.v),
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.h)))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: 403.v),
                                                      padding:
                                                          EdgeInsets.all(22.h),
                                                      decoration: AppDecoration
                                                          .fillBluegray90004
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder22),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgSearchGray50,
                                                                height: 28
                                                                    .adaptSize,
                                                                width: 28
                                                                    .adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            617.v)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 26
                                                                            .h,
                                                                        top:
                                                                            3.v,
                                                                        bottom: 622
                                                                            .v),
                                                                child: Text(
                                                                    "Search...",
                                                                    style: CustomTextStyles
                                                                        .bodyMediumGray500Regular))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        _buildUserProfile(
                                                            context),
                                                        SizedBox(height: 13.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15.h,
                                                                    right:
                                                                        56.h),
                                                            child: _buildTwentyNine(
                                                                context,
                                                                varunText:
                                                                    "Ravi",
                                                                someTextHere:
                                                                    "some text here",
                                                                timeText:
                                                                    "7:12 pm")),
                                                        SizedBox(height: 14.v),
                                                        Divider(),
                                                        SizedBox(height: 13.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15.h,
                                                                    right: 56
                                                                        .h),
                                                            child: _buildTwentyNine(
                                                                context,
                                                                varunText:
                                                                    "Varun",
                                                                someTextHere:
                                                                    "some text here",
                                                                timeText:
                                                                    "7:12 pm")),
                                                        SizedBox(height: 96.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15.h),
                                                            child:
                                                                Row(children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse121,
                                                                  height: 40
                                                                      .adaptSize,
                                                                  width: 40
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          20.h)),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left:
                                                                          20.h,
                                                                      top:
                                                                          22.v),
                                                                  child: Text(
                                                                      "some text here",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyMedium))
                                                            ])),
                                                        SizedBox(height: 14.v),
                                                        Divider(),
                                                        SizedBox(height: 13.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15.h,
                                                                    right:
                                                                        56.h),
                                                            child: _buildPranay(
                                                                context,
                                                                nameText:
                                                                    "Ravi",
                                                                timeText:
                                                                    "7:12 pm",
                                                                someText:
                                                                    "some text here")),
                                                        SizedBox(height: 14.v),
                                                        Divider(),
                                                        SizedBox(height: 13.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15.h,
                                                                    right:
                                                                        56.h),
                                                            child: _buildPranay(
                                                                context,
                                                                nameText:
                                                                    "Pranay",
                                                                timeText:
                                                                    "7:12 pm",
                                                                someText:
                                                                    "some text here")),
                                                        SizedBox(height: 14.v),
                                                        Divider(),
                                                        SizedBox(height: 13.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15.h,
                                                                    right:
                                                                        56.h),
                                                            child: _buildPranay(
                                                                context,
                                                                nameText:
                                                                    "Manas",
                                                                timeText:
                                                                    "7:12 pm",
                                                                someText:
                                                                    "some text here")),
                                                        SizedBox(height: 14.v),
                                                        Divider(),
                                                        SizedBox(height: 13.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15.h,
                                                                    right:
                                                                        56.h),
                                                            child: _buildPranay(
                                                                context,
                                                                nameText:
                                                                    "Ravi",
                                                                timeText:
                                                                    "7:12 pm",
                                                                someText:
                                                                    "some text here")),
                                                        SizedBox(height: 14.v),
                                                        Divider()
                                                      ]))
                                            ]))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 7.0.v),
              child: SizedBox(
                  width: 379.h,
                  child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(1))));
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return Userprofile2ItemWidget(onTapUserProfile: () {
            onTapUserProfile(context);
          });
        });
  }

  /// Common widget
  Widget _buildTwentyNine(
    BuildContext context, {
    required String varunText,
    required String someTextHere,
    required String timeText,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse12,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(20.h)),
      Padding(
          padding: EdgeInsets.only(left: 20.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(varunText,
                style: theme.textTheme.titleSmall!.copyWith(
                    color:
                        theme.colorScheme.onPrimaryContainer.withOpacity(1))),
            SizedBox(height: 2.v),
            Text(someTextHere,
                style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))
          ])),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 5.v, bottom: 21.v),
          child: Text(timeText,
              style: CustomTextStyles.bodySmallLight.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1))))
    ]);
  }

  /// Common widget
  Widget _buildPranay(
    BuildContext context, {
    required String nameText,
    required String timeText,
    required String someText,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse123,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(20.h)),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(nameText,
                              style: theme.textTheme.titleSmall!.copyWith(
                                  color: theme.colorScheme.onPrimaryContainer
                                      .withOpacity(1))),
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              child: Text(timeText,
                                  style: CustomTextStyles.bodySmallLight
                                      .copyWith(
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(1))))
                        ]),
                    SizedBox(height: 2.v),
                    Text(someText,
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1)))
                  ])))
    ]);
  }

  /// Navigates to the iphone1415ProMaxThirtyScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxThirtyScreen);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
