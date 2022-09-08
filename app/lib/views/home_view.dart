import 'package:app/controller/home_controller.dart';
import 'package:app/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Controller objj = Get.put(Controller());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Obx(() {
            return Text("${objj.counter}");
          })),
          ElevatedButton(onPressed: () {objj.increment();}, child: Text("done")),
          ElevatedButton(onPressed: (){Get.to(ProfileView());}, child: Text("next"))
        ],
      ),
    );
  }
}
