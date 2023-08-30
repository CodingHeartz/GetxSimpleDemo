import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_getx_demo/screens/detailsScreen/details_screen_controllers.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsScreenController controller = Get.put(DetailsScreenController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Screen"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Data from previous screen is:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
             Text(
              controller.selectedNum.value,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
