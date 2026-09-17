// ignore_for_file: unused_import, prefer_final_fields, unused_field, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e01_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e03_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e04_page_ui.dart';

class e02_page_ui extends StatefulWidget {
  const e02_page_ui({super.key});

  @override
  State<e02_page_ui> createState() => E02PageUI();
}

class E02PageUI extends State<e02_page_ui> {
  bool _obscurePassword = true;
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
                    alignment: Alignment.center,
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Enter Email or phone',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Password',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        //เปิดหน้า forgot password แบบย้อนกลับได้
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => e04_page_ui(),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.5),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 25.0,
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
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.orange,
                          thickness: 2.0,
                          endIndent: 8.0,
                        ),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.orange,
                          thickness: 2.0,
                          indent: 8.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/img_g.png',
                        ),
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(
                            80.0,
                            40.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          side: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/img_f.png',
                        ),
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(
                            80.0,
                            40.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          side: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/img_a.png',
                        ),
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(
                            80.0,
                            40.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          side: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account ?",
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
