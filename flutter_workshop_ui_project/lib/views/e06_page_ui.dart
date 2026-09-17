// ignore_for_file: unused_import, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e01_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';

class E06PageUI extends StatelessWidget {
  const E06PageUI({super.key});

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
              top: 0.0,
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
                      'Create New Password',
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
                      "Enter new password",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w100,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
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
                      hintText: 'Enter new password',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
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
                      hintText: 'Confirm password',
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
                        MaterialPageRoute(
                          builder: (context) => e01_page_ui(),
                        ),
                      );
                    },
                    child: Text(
                      'Submit',
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
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
