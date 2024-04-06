import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillGray800,
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1140x40,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ravi",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "some text here",
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 74,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 21.v,
              ),
              child: Text(
                "7:12 pm",
                style: CustomTextStyles.bodySmallLight,
              ),
            ),
            Spacer(
              flex: 25,
            ),
          ],
        ),
      ),
    );
  }
}
