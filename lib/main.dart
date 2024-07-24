import 'package:aakkar_app/screen/auth/login_screen.dart';
import 'package:aakkar_app/screen/dashboard/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/drawer_screen/mange_product/manage_product_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvoder>(create: (_) => HomeProvoder()),
        ChangeNotifierProvider<ManageProductProvider>(create: (_) => ManageProductProvider()),

      ],
      child: MaterialApp(
          title: 'Aakkar',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Poppins",
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
          ),
          home: const LoginScreen()),
    );
  }
}
