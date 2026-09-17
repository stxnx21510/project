import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e01_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';
//----------------------------------

void main() {
  runApp(FlutterWorkshop());
}

//----------------------------------
//แนะนำเป็น class แบบ stateful widget โดยตั้งชื่อล้อกับชื่อ project
//classนี้จะเป็นตัวเรียกใช้งานหน้าต่างๆของApplication โดย widget หลักของแอปแนะนำ materialApp
class FlutterWorkshop extends StatefulWidget {
  const FlutterWorkshop({super.key});

  @override
  State<FlutterWorkshop> createState() => _FlutterWorkshopState();
}

class _FlutterWorkshopState extends State<FlutterWorkshop> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const e01_page_ui(),
      theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme)),
    );
  }
}