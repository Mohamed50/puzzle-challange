import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modules/home/view/home.dart';
import 'utils/bindings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.arvoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const HomePage(),
      initialBinding: AppBindings(),
    );
  }
}
