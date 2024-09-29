import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:pos/components/cards/settingCard.dart';
import 'package:pos/components/customButtom.dart';
import 'package:pos/components/inputField/customField.dart';
import 'package:pos/controller/settings/settingsController.dart';
import 'package:pos/utility/constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder(
        init: SettingsController(),
        builder: (cont) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.017),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      "Store Settings",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: headingColor),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        direction: Axis.horizontal,
                        children: [
                          SettingCard(
                            leading: Container(
                              height: height * 0.07,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondaryColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Image.asset(
                                  'assets/upload.png',
                                  scale: 1,
                                ),
                              ),
                            ),
                            title: "Store Logo",
                            subtitle: Text("Upload your Store Logo"),
                          ),
                          SettingCard(
                            title: "Stroe Name",
                            subtitle: CustomField(
                                label: "Name",
                                controller: TextEditingController()),
                          ),
                          SettingCard(
                            title: "Phone",
                            subtitle: CustomField(
                                label: "phone",
                                controller: TextEditingController()),
                          ),
                          SettingCard(
                            title: "Address",
                            subtitle: CustomField(
                                label: "address",
                                controller: TextEditingController()),
                          ),
                          SettingCard(
                            title: "Email",
                            subtitle: CustomField(
                                label: "email",
                                controller: TextEditingController()),
                          ),
                          SettingCard(
                            title: "Website",
                            subtitle: CustomField(
                                label: "webiste",
                                controller: TextEditingController()),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      "Appearence Settings",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: headingColor),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        direction: Axis.horizontal,
                        children: [
                          SettingCard(
                            leading: Container(
                              height: height * 0.07,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondaryColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Image.asset(
                                  'assets/picker.png',
                                  scale: 1,
                                ),
                              ),
                            ),
                            title: "Primary Color",
                            subtitle: Container(
                                constraints: BoxConstraints(maxWidth: 220),
                                child: Text(
                                  "Pick a primary color for your store",
                                  style: TextStyle(
                                      color: description, fontSize: 12),
                                  overflow: TextOverflow.visible,
                                )),
                          ),
                          SettingCard(
                            leading: Container(
                              height: height * 0.07,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondaryColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Image.asset(
                                  'assets/picker.png',
                                  scale: 1,
                                ),
                              ),
                            ),
                            title: "Seconadary Color",
                            subtitle: Container(
                                constraints: BoxConstraints(maxWidth: 220),
                                child: Text(
                                  "Pick a secondary color for your store",
                                  style: TextStyle(
                                      color: description, fontSize: 12),
                                  overflow: TextOverflow.visible,
                                )),
                          ),
                          SettingCard(
                            leading: Container(
                              height: height * 0.07,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondaryColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Image.asset(
                                  'assets/picker.png',
                                  scale: 1,
                                ),
                              ),
                            ),
                            title: "Heading Color",
                            subtitle: Container(
                                constraints: BoxConstraints(maxWidth: 220),
                                child: Text(
                                  "Pick a heading color for your store",
                                  style: TextStyle(
                                      color: description, fontSize: 12),
                                  overflow: TextOverflow.visible,
                                )),
                          ),
                          SettingCard(
                            leading: Container(
                              height: height * 0.07,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondaryColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Image.asset(
                                  'assets/picker.png',
                                  scale: 1,
                                ),
                              ),
                            ),
                            title: "Background Color",
                            subtitle: Container(
                                constraints: BoxConstraints(maxWidth: 220),
                                child: Text(
                                  "Pick a background color for your store",
                                  style: TextStyle(
                                      color: description, fontSize: 12),
                                  overflow: TextOverflow.visible,
                                )),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
            floatingActionButton: Container(
              margin: EdgeInsets.only(bottom: 24, left: 12),
              height: 50,
              width: 130,
              child: CustomButton(title: "Update", onTap: (){})),
          );
        });
  }
}
