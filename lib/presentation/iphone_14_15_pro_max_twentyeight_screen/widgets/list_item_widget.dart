import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:flutter/material.dart';

class Group44 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 372.h,
          height: 141.v,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 116.h,
                  height: 141.v,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/upi.png"),
                      ),
                      Text(
                        "UPI",
                        style: CustomTextStyles.titleMediumBlack900,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 128.h,
                top: 0,
                child: Container(
                  width: 116.h,
                  height: 141.v,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/paytm.png"),
                      ),
                      Text(
                        "Paytm\nWallet",
                        style: CustomTextStyles.titleMediumBlack900,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 256.h,
                top: 0,
                child: Container(
                  width: 116.h,
                  height: 141.v,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/wallet.png",
                          height: 60.v,
                        ),
                      ),
                      Text(
                        "ApniGaadi\nWallet",
                        style: CustomTextStyles.titleMediumBlack900,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 244.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUpi1,
                  height: 31.v,
                  width: 90.h,
                ),
                SizedBox(height: 21.v),
                Text(
                  "UPI",
                  style: CustomTextStyles.titleSmallBlack900Medium,
                ),
                SizedBox(height: 7.v),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 21.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 9.v),
                CustomImageView(
                  imagePath: ImageConstant.imgPaytmLogo1,
                  height: 29.v,
                  width: 90.h,
                ),
                SizedBox(height: 23.v),
                SizedBox(
                  width: 44.h,
                  child: Text(
                    "Paytm wallet",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallBlack900Medium,
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
