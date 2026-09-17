// ignore_for_file: camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';

class e01_page_ui extends StatelessWidget {
  const e01_page_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              'assets/images/img_orange1.png',
              height: 500.0,
            ),
            SizedBox(
              height: 00.0,
            ),
            Text(
              'BERRY JUICE',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'A Moments of healthy sip',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            Text(
              'The best vitamin for you health',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 140.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => e02_page_ui(),
                  ),
                );
              },
              //เปิดหน้า login แบบย้อนกลับได้
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore Now',
                    style: TextStyle(
                      fontSize: 28.5,
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 27.0,
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  380,
                  55,
                ),
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
