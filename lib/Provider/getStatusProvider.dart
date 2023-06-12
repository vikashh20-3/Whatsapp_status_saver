import 'dart:developer';
import 'dart:io';

import 'package:demo/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';

class GetStatusProvider extends ChangeNotifier {
  void getStatus() async {
    final status = await Permission.storage.request();

    if (status.isDenied) {
      Permission.storage.request();
      log("Permission is denied");
      return;
    }
    if (status.isGranted) {
      final directory = Directory(AppConstant.WHATSAPP_PATH);

      // try {
      //   final directory = Directory(AppConstant.WHATSAPP_PATH);

      //   if (directory.existsSync()) {
      //     final items = directory.listSync();
      //     log(items.toString());
      //   } else {
      //     log("WhatsApp is not available");
      //   }
      // } catch (e) {
      //   log("Error accessing directory: $e");
      // }

      if (directory.existsSync()) {
        final items = directory.listSync();
        log(directory.toString());
        log("Permission is granted");
        log(items.toString());
      } else {
        log("whatsapp is not availble ");
      }
    }
  }
}
