// ignore_for_file: camel_case_types, unused_import, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e03_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e05_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e06_page_ui.dart';

class e04_page_ui extends StatefulWidget {
  const e04_page_ui({super.key});

  @override
  State<e04_page_ui> createState() => E04PageUI();
}

class E04PageUI extends State<e04_page_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/img_orange2.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 390.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 40.0,
              left: 40.0,
              bottom: 0.0,
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 60.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 20.0,
                      ),
                      style: OutlinedButton.styleFrom(
                        iconColor: Colors.white,
                        backgroundColor:
                            const Color.fromARGB(237, 233, 228, 228),
                        shape: CircleBorder(
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 320.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot your Password?',
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Enter email address",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w100,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                      // hintText: 'Enter your Email',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 35.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => e05_page_ui()),
                      );
                    },
                    child: Text(
                      'Send code',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width,
                        55.0,
                      ),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 265),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => e03_page_ui(),
                            ),
                          );
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
