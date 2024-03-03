import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUI();
}

class _LoginUI extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 154, 13, 5),
        title: Text(
          'IoT SAU 2024',
          style: GoogleFonts.kanit(
            textStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.1,
              left: MediaQuery.of(context).size.width * 0.1),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text(
                  'เข้าใช้งานแอปพลิเคชั่น',
                  style: GoogleFonts.kanit(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 154, 13, 5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 154, 13, 5),
                      ),
                    ),
                    hintText: 'Username',
                    labelText: 'ชื่อผู้ใช้งาน',
                    hintStyle: GoogleFonts.kanit(),
                    labelStyle: GoogleFonts.kanit(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 154, 13, 5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 154, 13, 5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 154, 13, 5),
                      ),
                    ),
                    hintText: 'Password',
                    labelText: 'รหัสผ่าน',
                    hintStyle: GoogleFonts.kanit(),
                    labelStyle: GoogleFonts.kanit(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 154, 13, 5),
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 154, 13, 5),
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.04,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * 0.04,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    backgroundColor: const Color.fromARGB(255, 154, 13, 5),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do not have account?  ',
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    ),
                    InkWell(
                      //หรือใช้ GestureDetector() ก็ได้
                      onTap: () {},
                      child: Text(
                        'Register',
                        style: GoogleFonts.kanit(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            color: const Color.fromARGB(255, 134, 13, 5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
