import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/backend/modals.dart';
import 'package:apni_gaadi_driver/chat/text.dart';
import 'package:apni_gaadi_driver/core/utils/image_constant.dart';
import 'package:apni_gaadi_driver/core/utils/size_utils.dart';
import 'package:apni_gaadi_driver/theme/custom_text_style.dart';
import 'package:apni_gaadi_driver/theme/theme_helper.dart';
import 'package:apni_gaadi_driver/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class NoPreviousRidesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.hourglass_empty,
          size: 150,
          color: appTheme.cyan200,
        ),
        SizedBox(height: 0),
        Text(
          'No Previous Rides',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'You haven\'t taken any rides yet. Let\'s go on an adventure!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

class Iphone14TwentynineScreen extends StatelessWidget {
  const Iphone14TwentynineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: _buildAppBar(context),
        body: FutureBuilder<List<RideData>>(
            future: ApiMethods.getRideHistory(
              status: "Finished",
            ),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: _buildEightyThree2(
                          context,
                          snapshot.data![index].droplocation,
                          snapshot.data![index].time.toString(),
                          snapshot.data![index].fare,
                          snapshot.data![index].pickup),
                    );
                  },
                );
              }
              return NoPreviousRidesView();
            }),
        // body: ListView.builder(
        //   itemCount: 12,
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: const EdgeInsets.all(12.0),
        //       child: _buildEightyThree2(context, "Preet",
        //           DateTime.now().toString(), "200", "Paid Online"),
        //     );
        //   },
        // ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: CustomText(
        text: "Ride History",
        color: Colors.white,
      ),
      backgroundColor: appTheme.blueGray90004,
    );
  }

  /// Section Widget

  /// Section Widget
  Widget _buildEightyThree2(BuildContext context, String name, String date,
      String price, String status) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.img31,
                  height: 39.v,
                  width: 72.h,
                  margin: EdgeInsets.only(bottom: 23.v)),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(name,
                                style: theme.textTheme.titleSmall!
                                    .copyWith(color: Colors.black)),
                            Text("₹ $price",
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleSmallOnError)
                          ]),
                      SizedBox(height: 5.v),
                      Text(status,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: Colors.black)),
                      SizedBox(height: 5.v),
                      Text(date,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: Colors.black))
                    ],
                  ),
                ),
              )
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
