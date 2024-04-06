import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/backend/modals.dart';
import 'package:apni_gaadi_driver/chat/add_bank.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/main.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_four_screen/iphone_14_15_pro_max_four_screen.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentythree_screen/vehicle_details.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentytwo_draweritem/iphone_14_15_pro_max_twentytwo_draweritem.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Iphone1415ProMaxTwentythreeScreen extends StatelessWidget {
  const Iphone1415ProMaxTwentythreeScreen({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        endDrawer: Iphone1415ProMaxTwentytwoDraweritem(),
        body: SingleChildScrollView(
          child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 14.v),
              child: FutureBuilder<List<DriverInfo>>(
                  future: ApiMethods.displayDriverInformation(status: "Driver"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          SizedBox(height: 0.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 22.h,
                                right: 20.h,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img09LeftChevron,
                                    height: 28.v,
                                    width: 26.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 50.h,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      "My Account Information",
                                      style: theme.textTheme.titleLarge!
                                          .copyWith(color: Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      Scaffold.of(context).openEndDrawer();
                                    },
                                    icon: Icon(
                                      Icons.menu,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(height: 32.v),
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                NetworkImage(snapshot.data![0].profilepic),
                          ),
                          // Image.network(snapshot.data![0].profilepic),
                          SizedBox(height: 15.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Vehicle: ${snapshot.data![0].ownerType}",
                                style: CustomTextStyles.titleLargeBlack900,
                              ),
                              // Padding(
                              //   padding: EdgeInsets.only(left: 5.h),
                              //   child: Text(
                              //     "(Senda)",
                              //     style: CustomTextStyles.titleLargeRegular,
                              //   ),
                              // ),
                            ],
                          ),
                          SizedBox(height: 13.v),
                          Text(
                            snapshot.data![0].name,
                            style: CustomTextStyles.titleLargeBlack900,
                          ),
                          SizedBox(height: 9.v),
                          // RichText(
                          //   text: TextSpan(
                          //     children: [
                          //       TextSpan(
                          //         text: "Rating: ",
                          //         style: CustomTextStyles.bodyLargeRegular,
                          //       ),
                          //       TextSpan(
                          //         text: "4.75",
                          //         style: CustomTextStyles.bodyLargeLime800,
                          //       ),
                          //     ],
                          //   ),
                          //   textAlign: TextAlign.left,
                          // ),
                          SizedBox(height: 5.v),
                          CustomRatingBar(
                            initialRating: 4,
                          ),
                          SizedBox(height: 24.v),
                          _buildFiftyFive(context),
                          SizedBox(height: 20.v),
                          _buildEightySeven(
                            context,
                            phoneLabel: "Name",
                            mobileNoLabel: snapshot.data![0].name,
                          ),
                          _buildEightySeven(
                            context,
                            phoneLabel: "Phone",
                            mobileNoLabel: snapshot.data![0].mobile,
                          ),
                          _buildEightySeven(
                            context,
                            phoneLabel: "Email ID",
                            mobileNoLabel: snapshot.data![0].email,
                          ),
                          _buildEightySeven(
                            context,
                            phoneLabel: "Vehicle Number",
                            mobileNoLabel: snapshot.data![0].vehiclenumber,
                          ),
                          _buildEightySeven(
                            context,
                            phoneLabel: "Vehicle Color",
                            mobileNoLabel: snapshot.data![0].vehicleColor,
                          ),
                          _buildEightySeven(
                            context,
                            phoneLabel: "Vehicle Model",
                            mobileNoLabel: snapshot.data![0].vehicleModel,
                          ),
                          _buildEightySeven(
                            context,
                            phoneLabel: "Vehicle Name",
                            mobileNoLabel: snapshot.data![0].vehicleName,
                          ),
                          _buildEightySeven(
                            context,
                            phoneLabel: "Vehicle Brand",
                            mobileNoLabel: snapshot.data![0].vehicleBrand,
                          ),

                          SizedBox(
                            height: 20.v,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 36),
                            child: primaryButton(
                                bgColor: appTheme.cyan200,
                                context: context,
                                text: "Vehicle Details",
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return VehicleDetails();
                                      });
                                }),
                          ),

                          // _buildEightySeven(
                          //   context,
                          //   phoneLabel: "Language",
                          //   mobileNoLabel: "English",
                          // ),
                          SizedBox(height: 22.v),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 36),
                            child: primaryButton(
                                bgColor: appTheme.cyan200,
                                context: context,
                                text: "Log Out",
                                onTap: () async {
                                  SharedPreferences preferences =
                                      await SharedPreferences.getInstance();
                                  preferences.clear();
                                  navRealKey.currentState!.pushAndRemoveUntil(
                                      MaterialPageRoute(builder: (context) {
                                    return Iphone1415ProMaxFourScreen();
                                  }), (route) => false);
                                }),
                          ),
                          // CustomOutlinedButton(
                          //   // buttonStyle: ButtonStyle(
                          //   //     backgroundColor: MaterialStatePropertyAll(
                          //   //         Colors.transparent)),
                          //   onPressed: () async {
                          //     SharedPreferences preferences =
                          //         await SharedPreferences.getInstance();
                          //     preferences.clear();
                          //     navigatorKey.currentState!.pushAndRemoveUntil(
                          //         MaterialPageRoute(builder: (context) {
                          //       return Iphone1415ProMaxFourScreen();
                          //     }), (route) => false);
                          //   },
                          //   decoration: BoxDecoration(
                          //     // border: Border.all(color: Colors.red.shade900),
                          //     // color: Colors.transparent,
                          //     color: appTheme.cyan200,
                          //     borderRadius: BorderRadius.circular(12),
                          //   ),
                          //   text: "Log Out",
                          //   margin: EdgeInsets.only(
                          //     left: 43.h,
                          //     right: 44.h,
                          //   ),
                          // ),
                          SizedBox(height: 22.v),
                          Container(
                            height: 9.v,
                            width: 131.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return Container();
                  })),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyFive(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 46.h,
        vertical: 35.v,
      ),
      decoration:
          AppDecoration.fillErrorContainer.copyWith(color: Color(0xff7A7A7A)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Tips:",
                style: theme.textTheme.bodyLarge,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "Earned:",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "Years:",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              right: 19.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "1543",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(
                  width: 172.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "₹ 56,505",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Text(
                        "2",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEightySeven(
    BuildContext context, {
    required String phoneLabel,
    required String mobileNoLabel,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              phoneLabel,
              style: CustomTextStyles.bodyMediumRegular.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
          Text(
            mobileNoLabel,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
        ],
      ),
    );
  }
}
