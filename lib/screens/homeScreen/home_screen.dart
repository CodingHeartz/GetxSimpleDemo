import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_getx_demo/screens/homeScreen/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Tap buttons to increace/decrease counts",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            Obx(() => Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          controller.onTapSubtract();
                        },
                        icon: const Icon(Icons.remove)),
                    Text(
                      "Number: ${controller.num.value}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    IconButton(
                        onPressed: () {
                          controller.onTapAdd();
                        },
                        icon: const Icon(Icons.add)),
                  ],
                )),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    controller.resetButton();
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    controller.navigateToNextScreen();
                  },
                  child: const Text(
                    "Go to next screen",
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
