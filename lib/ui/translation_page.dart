import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_getx/controller/username_controller.dart';

// ignore: must_be_immutable
class TranslationPage extends StatelessWidget {
  TranslationPage({Key? key}) : super(key: key);

  UserNameController controller = Get.put(UserNameController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Translation with getX"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  controller.changeUserName(value);
                },
                decoration: InputDecoration(
                    border: const OutlineInputBorder(), labelText: "name".tr),
              ),
              const SizedBox(
                height: 50,
              ),
              Obx(() {
                return Text(
                    "hello".trParams({"name": controller.username.value}));
              })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (Get.locale == const Locale("uz", "UZ")) {
              Get.updateLocale(const Locale("en", "EN"));
            } else {
              Get.updateLocale(const Locale("uz", "UZ"));
            }
          },
          child: const Icon(Icons.change_circle)),
    );
  }
}
