import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentyfive_page/iphone_14_15_pro_max_twentyfive_page.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentyfour_page/iphone_14_15_pro_max_twentyfour_page.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentysix_page/iphone_14_15_pro_max_twentysix_page.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxTwentyfiveTabContainerScreen extends StatefulWidget {
  const Iphone1415ProMaxTwentyfiveTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxTwentyfiveTabContainerScreenState createState() =>
      Iphone1415ProMaxTwentyfiveTabContainerScreenState();
}

class Iphone1415ProMaxTwentyfiveTabContainerScreenState
    extends State<Iphone1415ProMaxTwentyfiveTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 79.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
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
                                  "Payment History",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 55.v),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 50.h),
                        decoration: AppDecoration.fillGray80001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: SizedBox(
                          height: 28.v,
                          width: 330.h,
                          child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor: appTheme.greenA700,
                            labelStyle: TextStyle(
                              fontSize: 15.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                            unselectedLabelColor: theme
                                .colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            unselectedLabelStyle: TextStyle(
                              fontSize: 15.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                            indicatorColor: appTheme.greenA700,
                            tabs: [
                              Tab(
                                child: Text(
                                  "Today",
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Weekly",
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Monthly",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 741.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            Iphone1415ProMaxTwentyfourPage(),
                            Iphone1415ProMaxTwentyfivePage(),
                            Iphone1415ProMaxTwentysixPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
