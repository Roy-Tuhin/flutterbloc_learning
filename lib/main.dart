import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterbloc_learning/views/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child){
          return GetMaterialApp(
               theme: ThemeData(useMaterial3: true),
                debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
            );
          

        }
    );
  }
}


