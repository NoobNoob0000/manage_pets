import 'package:flutter/material.dart';
import 'package:manage_pets/features/manage_pets/manage_pet.dart';

import '../core/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().theme(),
      home: ManagePetScreen(),
    );
  }
}
