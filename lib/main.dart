import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:nerozon/pages/home_page.dart';
import 'package:nerozon/utils/sizer_helper.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeHelperUtil.setWidthHeight(constraints);
        return MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          title: 'Nerozon',
          builder: DevicePreview.appBuilder,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomePage(),
        );
      });
    });
  }
}
