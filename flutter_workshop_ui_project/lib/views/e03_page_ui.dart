// ignore_for_file: duplicate_import, unused_import, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e01_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class e03_page_ui extends StatefulWidget {
  const e03_page_ui({super.key});

  @override
  State<e03_page_ui> createState() => E03PageUI();
}

class E03PageUI extends State<e03_page_ui> {
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
            height: 240.0,
            alignment: Alignment.bottomCenter,
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
                  SizedBox(height: 235.0),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Register',
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
                      'Create your new account',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    keyboardType: TextInputType.name,
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
                      hintText: 'Name',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15.0),
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
                      hintText: 'E-mail',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    keyboardType: TextInputType.phone,
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
                      hintText: 'Phone',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    // obscureText: true,
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
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                              text: 'By signing up you agree to our '),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: const TextStyle(
                              color: Colors.orange,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri url =
                                    Uri.parse('https://www.google.com');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url,
                                      mode: LaunchMode.externalApplication);
                                }
                              },
                          ),
                          const TextSpan(text: '\nand '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: const TextStyle(
                              color: Colors.orange,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri url =
                                    Uri.parse('https://www.google.com');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url,
                                      mode: LaunchMode.externalApplication);
                                }
                              },
                          ),
                        ],
                      ),
                    ), // RichText
                  ), // Align
                  SizedBox(height: 25.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => e02_page_ui(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
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
                  SizedBox(height: 22.0),
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
                        "Already have an account ?",
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => e02_page_ui(),
                            ),
                          );
                        },
                        child: Text(
                          "Log In",
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
