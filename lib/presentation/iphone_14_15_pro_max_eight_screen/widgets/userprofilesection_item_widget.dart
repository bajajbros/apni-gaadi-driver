import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Car Owner",
                  style: CustomTextStyles.titleLarge23,
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 163.h,
                  child: Text(
                    "You wish to drive a car, that you own.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray500Regular,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img141,
            height: 39.v,
            width: 106.h,
            margin: EdgeInsets.only(
              top: 37.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}

class BikeCard extends StatelessWidget {
  BikeCard({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
          color: appTheme.gray50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Motorbike (2 wheeler)",
                  style: CustomTextStyles.titleLarge23,
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 163.h,
                  child: Text(
                    "You wish to drive motorcycle or scooter, that you own.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray500Regular,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: "assets/images/img_10_1.png",
            height: 70.v,
            width: 106.h,
            margin: EdgeInsets.only(
              top: 37.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}

class AutoCard extends StatelessWidget {
  AutoCard({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Auto rickshaw",
                  style: CustomTextStyles.titleLarge23,
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 163.h,
                  child: Text(
                    "You wish to drive a Auto rickshaw, that you own.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray500Regular,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: "assets/images/img_11_1.png",
            height: 70.v,
            width: 106.h,
            margin: EdgeInsets.only(
              top: 37.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}
