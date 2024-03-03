import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iot_test_project/view/login_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}



class _SplashScreenUIState extends State<SplashScreenUI> {
  
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginUI(),
        ),
      ),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.75,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            CircularProgressIndicator(
              color: Colors.blue,
            ),
            Text(
              'IoT SAU 2024',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              'Create by Natthaphon',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
