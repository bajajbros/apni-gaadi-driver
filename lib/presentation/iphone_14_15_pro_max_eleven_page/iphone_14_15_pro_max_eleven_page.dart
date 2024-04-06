import 'dart:math';

import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/backend/modals.dart';
import 'package:apni_gaadi_driver/chat/add_bank.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/map/map.dart';
import 'package:apni_gaadi_driver/widgets/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxElevenPage extends StatefulWidget {
  Iphone1415ProMaxElevenPage({Key? key}) : super(key: key);

  @override
  State<Iphone1415ProMaxElevenPage> createState() =>
      _Iphone1415ProMaxElevenPageState();
}

class _Iphone1415ProMaxElevenPageState
    extends State<Iphone1415ProMaxElevenPage> {
  Stream<List<RideData>> ridesStream() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 1));
      yield await ApiMethods.getRideHistory(
        status: "Pending",
      );
    }
  }

  Stream<List<DriverInfo>> onlineStream() async* {
    while (true) {
      await Future.delayed(Duration.zero);
      yield await ApiMethods.displayDriverInformation(status: "Driver");
    }
  }

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: appTheme.cyan200,
          title: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.h),
              child: Transform.scale(
                scale: 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StreamBuilder<List<DriverInfo>>(
                      stream: onlineStream(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          isSelectedSwitch =
                              snapshot.data![0].isOnline == "Offline"
                                  ? true
                                  : false;
                          dev.log(snapshot.data![0].isOnline);
                          return isSelectedSwitch
                              ? Text("You’re Offline",
                                  style: CustomTextStyles.headlineLargeRed900)
                              : Text("You’re Online",
                                  style:
                                      CustomTextStyles.headlineLargeGreenA700);
                        }
                        return Container();
                      },
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    StreamBuilder<List<DriverInfo>>(
                      stream: onlineStream(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          isSelectedSwitch =
                              snapshot.data![0].isOnline == "Offline"
                                  ? true
                                  : false;
                          dev.log(snapshot.data![0].isOnline);
                          return CupertinoSwitch(
                            activeColor: Colors
                                .red, // Color when the switch is ON (true)
                            trackColor: Colors.green,
                            value: isSelectedSwitch,
                            onChanged: (value) async {
                              await ApiMethods.updateOnlineOffline(context,
                                  status:
                                      isSelectedSwitch ? "Offline" : "Online");
                              setState(
                                () {
                                  isSelectedSwitch = value;
                                  // You can perform actions based on the switch state, like updating the driver status.
                                  // For example, you can send a request to change the driver's online/offline status.
                                  // updateDriverStatus(value);
                                },
                              );
                            },
                          );
                        }
                        return Container();
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            CurrentLocationMap(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 0.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Spacer(),
                  // SizedBox(height: 29.v),
                  SizedBox(
                    // height: 500.v,
                    // width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // CustomImageView(
                        //     imagePath: ImageConstant.imgGroup15,
                        //     height: 130.adaptSize,
                        //     width: 130.adaptSize,
                        //     alignment: Alignment.topLeft,
                        //     margin: EdgeInsets.only(top: 83.v)),
                        isSelectedSwitch
                            ? Container()
                            : StreamBuilder<List<RideData>>(
                                stream: ridesStream(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    if (snapshot.data!.isNotEmpty) {
                                      return RideCard(
                                          userNumber: snapshot.data![0].email,
                                          rideId:
                                              snapshot.data![0].id.toString(),
                                          pickupLocation:
                                              snapshot.data![0].pickup,
                                          dropLocation:
                                              snapshot.data![0].droplocation,
                                          distance:
                                              snapshot.data![0].time.toString(),
                                          fare: snapshot.data![0].fare,
                                          onAccept: () {},
                                          onDecline: () {});
                                    }
                                    return Container();
                                  }
                                  return Container();
                                })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the iphone1415ProMaxThirteenScreen when the action is triggered.
  // onTapImgImage(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxThirteenScreen);
  // }
}

class RideCard extends StatelessWidget {
  final String userNumber;
  final String rideId;
  final String pickupLocation;
  final String dropLocation;
  final String distance;
  final String fare;
  final VoidCallback onAccept;
  final VoidCallback onDecline;

  RideCard({
    required this.pickupLocation,
    required this.dropLocation,
    required this.distance,
    required this.fare,
    required this.onAccept,
    required this.onDecline,
    required this.rideId,
    required this.userNumber,
  });

  @override
  Widget build(BuildContext context) {
    String generateOTP() {
      Random random = Random();
      // Generate a random 6-digit OTP
      int otp = random.nextInt(9999);
      // Ensure the OTP has 6 digits
      return otp.toString().padLeft(4, '0');
    }

    return Card(
      color: appTheme.blueGray900,
      elevation: 8.0,
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '🚗 New Ride is Here',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    ApiMethods.insertRide(context,
                        pickup: pickupLocation,
                        time: "",
                        id: rideId,
                        dropLocation: dropLocation,
                        cabType: "",
                        fare: fare,
                        seat: "",
                        status: "Decline",
                        driver: "",
                        driverph: "",
                        driverRating: "",
                        OTP: "",
                        tip: "",
                        email: "",
                        functionStatus: "Decline",
                        rideId: rideId,
                        driverId: "");
                  },
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            _buildLocationRow('Pickup Location', pickupLocation),
            _buildLocationRow('Drop Location', dropLocation),
            SizedBox(height: 16.0),
            // _buildDataRow('Distance', distance),
            _buildDataRow('Fare', "₹ $fare"),
            SizedBox(height: 24.0),
            primaryButton(
                context: context,
                text: "Accept",
                onTap: () async {
                  final data = await ApiMethods.displayDriverInformation(
                      status: "Driver");
                  ApiMethods.insertRide(context,
                      id: rideId,
                      pickup: pickupLocation,
                      time: "",
                      dropLocation: dropLocation,
                      cabType: data[0].vehicleType,
                      fare: fare,
                      seat: "",
                      status: "Accept",
                      driver: data[0].name,
                      driverph: data[0].mobile,
                      driverRating: "",
                      OTP: generateOTP(),
                      tip: "",
                      email: userNumber,
                      functionStatus: "Accept",
                      rideId: rideId,
                      driverId: "driverId");
                },
                bgColor: Colors.green)
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     ElevatedButton(
            //       onPressed: onAccept,
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.green,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10.0),
            //         ),
            //       ),
            //       child: Text(
            //         'Accept',
            //         style: TextStyle(fontSize: 12.0, color: Colors.white),
            //       ),
            //     ),
            //     ElevatedButton(
            //       onPressed: onDecline,
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.red,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10.0),
            //         ),
            //       ),
            //       child: Text(
            //         'Decline',
            //         style: TextStyle(fontSize: 16.0),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationRow(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildDataRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
