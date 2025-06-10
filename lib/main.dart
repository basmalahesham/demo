import 'package:demo/features/content/presentation/views/content_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      builder: (context, child) => DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // updated here
      ),
      minTextAdapt: true,
      splitScreenMode: true,
    ),
  );}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ContentView(),
    );
  }
}

