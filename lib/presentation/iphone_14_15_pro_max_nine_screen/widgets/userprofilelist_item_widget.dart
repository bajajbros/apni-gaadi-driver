import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  final String img;
  final bool selected;
  final String text;
  const UserprofilelistItemWidget({
    Key? key,
    required this.text,
    required this.selected,
    required this.img,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 86.h,
      child: Padding(
        padding: EdgeInsets.only(
          left: 1.h,
          bottom: 1.v,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 114.v,
              width: 82.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 86.v,
                      width: 82.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            selected
                                ? appTheme.cyan200 // Your highlight color
                                : appTheme.blueGray90002,
                            theme.colorScheme.onPrimaryContainer
                                .withOpacity(selected ? 0.8 : 1),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: img,
                    height: 91.v,
                    width: 45.h,
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14.v),
            Text(
              text,
              style: selected
                  ? CustomTextStyles.bodyLargeRegular // Your bold text style
                  : CustomTextStyles.bodyMediumRegular15,
            ),
          ],
        ),
      ),
    );
  }
}
