import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Groc_app2/Prov_model.dart';
import 'Groc_app2/first_1+gro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => prov_groc()),

      ],
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
        home: first_home_gap(),
      ),
    );
  }
}
