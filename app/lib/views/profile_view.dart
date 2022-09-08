import 'package:app/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Controller obj = Get.find();
    return Scaffold(
       body: Center(child: Text("${obj.counter}")),
         


    );
  }
}