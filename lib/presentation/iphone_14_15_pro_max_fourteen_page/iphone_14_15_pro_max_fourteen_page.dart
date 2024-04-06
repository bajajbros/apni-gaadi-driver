import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFourteenPage extends StatefulWidget {
  const Iphone1415ProMaxFourteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxFourteenPageState createState() =>
      Iphone1415ProMaxFourteenPageState();
}

class Iphone1415ProMaxFourteenPageState
    extends State<Iphone1415ProMaxFourteenPage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProMaxFourteenPage> {
  TextEditingController locationTwoController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
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
              image: AssetImage(
                ImageConstant.imgGroup690,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup690,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 15.v),
                _buildLocationTwo(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Row(
              children: [
                Container(
                  width: 172.h,
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 13.v,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        child: Column(
                          children: [
                            Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.red700,
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
                                color: appTheme.red700,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                            ),
                            SizedBox(height: 7.v),
                            Container(
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.red700,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.red700,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "Pari Chowk",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "Noida Sec 21",
                              style: theme.textTheme.bodySmall,
                            ),
                            // CustomTextFormField(
                            //   width: 142.h,
                            //   controller: locationTwoController,
                            //   hintText: "Noida Sec 21",
                            //   hintStyle: theme.textTheme.bodySmall!,
                            //   textInputAction: TextInputAction.done,
                            //   contentPadding:
                            //       EdgeInsets.symmetric(horizontal: 5.h),
                            // ),
                            SizedBox(height: 8.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Noida City Center",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "Noida Sec 43",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
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
                    top: 20.v,
                    bottom: 20.v,
                  ),
                  child: Column(
                    children: [
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
                                child: Text(
                                  "Time:",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Text(
                                "31 mins",
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 34.v),
                      SizedBox(
                        width: 104.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              child: Text(
                                "Distance:",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Text(
                              "20 kms",
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
          ),
          SizedBox(height: 136.v),
          Container(
            height: 132.v,
            width: 222.h,
            margin: EdgeInsets.only(left: 55.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCar1,
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  alignment: Alignment.topRight,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.black900,
                      borderRadius: BorderRadius.circular(
                        22.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    child: Divider(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
