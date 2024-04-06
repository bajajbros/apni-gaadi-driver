import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 151.h,
          margin: EdgeInsets.only(bottom: 15.v),
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
                    CustomElevatedButton(
                      width: 47.h,
                      text: "PM",
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Varun",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "Paid Online",
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            right: 34.h,
            bottom: 44.v,
          ),
          child: Text(
            "₹ 120",
            style: theme.textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
