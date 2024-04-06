import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxTwentysevenScreen extends StatelessWidget {
  Iphone1415ProMaxTwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController noidaSecvalueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 79.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img09LeftChevron,
                                height: 28.v,
                                width: 26.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 111.h,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "Trip Details",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 21.v),
                        _buildLeftChevronAndTripDetails(context),
                        SizedBox(height: 10.v),
                        _buildTimePriceAndDistance(context),
                        SizedBox(height: 11.v),
                        _buildDateTimeAndTripType(context),
                        SizedBox(height: 10.v),
                        _buildYourEarnedAmountAndAccumulatedCash(context),
                        SizedBox(height: 20.v),
                        SizedBox(
                          width: 386.h,
                          child: Text(
                            "This trip was towards your destination you received Guaranteed fare.",
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumRegular15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLeftChevronAndTripDetails(BuildContext context) {
    return Container(
      width: 385.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 17.adaptSize,
                        width: 17.adaptSize,
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
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.h),
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
                        SizedBox(height: 4.v),
                        CustomTextFormField(
                          controller: noidaSecvalueController,
                          hintText: "Noida Sec 21",
                          hintStyle: theme.textTheme.bodySmall!,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            height: 6.adaptSize,
            width: 6.adaptSize,
            margin: EdgeInsets.only(left: 5.h),
            decoration: BoxDecoration(
              color: appTheme.red700,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Row(
            children: [
              Container(
                height: 17.adaptSize,
                width: 17.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 8.v),
                decoration: BoxDecoration(
                  color: appTheme.red700,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Noida City Center",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Noida Sec 43",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimePriceAndDistance(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillGray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Time:",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 10.v),
                Text(
                  "31 mins",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 47,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price:",
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 10.v),
              Text(
                "₹ 120",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          Spacer(
            flex: 52,
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Distance:",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "20 km",
                    style: theme.textTheme.titleSmall,
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
  Widget _buildDateTimeAndTripType(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillGray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              _buildServiceType(
                context,
                serviceTypeText: "Date & Time",
                sedanText: "16 Jan’23 at 3:32 pm",
              ),
              SizedBox(height: 21.v),
              _buildServiceType(
                context,
                serviceTypeText: "Service Type",
                sedanText: "Sedan",
              ),
            ],
          ),
          SizedBox(height: 21.v),
          _buildServiceType(
            context,
            serviceTypeText: "Trip Type",
            sedanText: "Normal",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYourEarnedAmountAndAccumulatedCash(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillGray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: _buildServiceType(
              context,
              serviceTypeText: "Total fare",
              sedanText: "₹ 120",
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: _buildServiceType(
              context,
              serviceTypeText: "Your Earned Amount",
              sedanText: "₹ 70",
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: _buildServiceType(
              context,
              serviceTypeText: "Toll refund recieved",
              sedanText: "₹ 0",
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: _buildServiceType(
              context,
              serviceTypeText: "Paid to ApniGaadi",
              sedanText: "₹ 40",
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: _buildTotalFare(
              context,
              totalFareText: "Payment to third parties",
              priceText: "₹ 10",
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: _buildTotalFare(
              context,
              totalFareText: "Total fare",
              priceText: "₹ 10",
            ),
          ),
          SizedBox(height: 23.v),
          Divider(
            color: appTheme.gray500,
          ),
          SizedBox(height: 19.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: Column(
              children: [
                _buildTotalFare(
                  context,
                  totalFareText: "Your eared amount",
                  priceText: "₹ 70",
                ),
                SizedBox(height: 24.v),
                _buildTotalFare(
                  context,
                  totalFareText: "Accumulated cash",
                  priceText: "₹ -125",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildServiceType(
    BuildContext context, {
    required String serviceTypeText,
    required String sedanText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            serviceTypeText,
            style: CustomTextStyles.bodyMediumRegular15.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
        ),
        Text(
          sedanText,
          style: CustomTextStyles.bodyMediumRegular15.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTotalFare(
    BuildContext context, {
    required String totalFareText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          totalFareText,
          style: CustomTextStyles.bodyMediumRegular15.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.bodyMediumRegular15.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }
}
