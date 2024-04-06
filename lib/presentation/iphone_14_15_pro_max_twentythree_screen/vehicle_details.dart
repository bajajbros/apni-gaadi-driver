import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/backend/modals.dart';
import 'package:apni_gaadi_driver/chat/text.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class VehicleDetails extends StatelessWidget {
  const VehicleDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Documents",
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: appTheme.blueGray90002,
        ),
        body: FutureBuilder<List<DriverInfo>>(
            future: ApiMethods.displayDriverInformation(status: "Driver"),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    buildCard(context, "Adhar Card", Icons.credit_card,
                        snapshot.data![0].adhaar),
                    buildCard(context, "License", Icons.drive_eta,
                        snapshot.data![0].dl),
                    buildCard(context, "Insurance", Icons.assignment,
                        snapshot.data![0].insurence),
                    buildCard(context, "Profile Pic", Icons.person,
                        snapshot.data![0].profilepic),
                    buildCard(context, "RC", Icons.confirmation_number,
                        snapshot.data![0].rc),
                    buildCard(context, "Pan Card", Icons.description,
                        snapshot.data![0].pan),
                  ],
                );
              }
              return CircularProgressIndicator.adaptive();
            }));
  }

  Widget buildCard(
      BuildContext context, String cardName, IconData icon, String imageUrl) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: ListTile(
        onTap: () {
          _showImageDialog(context, cardName, imageUrl);
        },
        leading: Icon(icon),
        title: Text(cardName, style: CustomTextStyles.titleLargeBlack900),
      ),
    );
  }

  void _showImageDialog(
      BuildContext context, String cardName, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  imageUrl,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Text(cardName),
              ],
            ),
          ),
        );
      },
    );
  }
}
