// ignore_for_file: unused_field, prefer_final_fields, unused_import, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e06_page_ui.dart';
import 'dart:async';

class e05_page_ui extends StatefulWidget {
  const e05_page_ui({super.key});

  @override
  State<e05_page_ui> createState() => E05PageUI();
}

class E05PageUI extends State<e05_page_ui> {
  final TextEditingController otp1 = TextEditingController();
  final TextEditingController otp2 = TextEditingController();
  final TextEditingController otp3 = TextEditingController();
  final TextEditingController otp4 = TextEditingController();

  final FocusNode focus1 = FocusNode();
  final FocusNode focus2 = FocusNode();
  final FocusNode focus3 = FocusNode();
  final FocusNode focus4 = FocusNode();
  int _secondsRemaining = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() {
      _secondsRemaining = 30;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/img_orange3.png',
            width: double.infinity,
            height: 500.0,
            // fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 40.0,
              left: 40.0,
              bottom: 0.0,
            ),
            child: Center(
              child: Column(children: [
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
                      backgroundColor: const Color.fromARGB(237, 233, 228, 228),
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
                    'Enter OTP',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'An 4 digit code has been sent to your email',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60.0,
                      height: 60.0,
                      child: TextField(
                        controller: otp1,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: const TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                      height: 60.0,
                      child: TextField(
                        controller: otp2,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: const TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                      height: 60.0,
                      child: TextField(
                        controller: otp3,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: const TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                      height: 60.0,
                      child: TextField(
                        controller: otp4,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: const TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 13.0,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(text: 'You should receive the OTP in '),
                      TextSpan(
                        text: '$_secondsRemaining Second',
                        style: const TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => E06PageUI(),
                      ),
                    );
                  },
                  child: Text(
                    'Verify',
                    style: TextStyle(
                      fontSize: 25.0,
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
              ]),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
