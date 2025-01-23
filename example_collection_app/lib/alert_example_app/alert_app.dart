import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertApp extends StatelessWidget {
  const AlertApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert'),
          onPressed: () {
            showPlatformAlert(context);
          },
        ),
      ),
    );
  }

  void showPlatformAlert(BuildContext context) {
    if (Platform.isAndroid) {
      // Android 스타일 AlertDialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Android Alert"),
            content: const Text("This is the default Android-style alert."),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  print("Confirmed!");
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else if (Platform.isIOS) {
      // iOS 스타일 CupertinoAlertDialog
      showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text("iOS Alert"),
            content: const Text("This is the default iOS-style alert."),
            actions: [
              CupertinoDialogAction(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                  print("Confirmed!");
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      // 다른 플랫폼 대응
      throw UnsupportedError("This platform is not supported.");
    }
  }
}
