import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'success_screen.dart';
import 'signin_screen.dart'; // واجهة تسجيل الدخول

class VerifyMobileScreen extends StatelessWidget {
  final phoneController = TextEditingController();

  VerifyMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify Mobile',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF003366),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Verify your mobile',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We will send a text to verify your number. No fees will apply.',
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Poppins',
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter your number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF003366),
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  if (phoneController.text.isNotEmpty) {
                    // عرض شاشة النجاح
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: false,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: Duration(milliseconds: 300),
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return SuccessScreen(
                          onSuccess: () {
                            // الانتقال إلى شاشة تسجيل الدخول بعد النجاح
                            Get.to(() => SigninScreen());
                          },
                        );
                      },
                    );
                  } else {
                    Get.snackbar(
                      'Error',
                      'Please enter your mobile number!',
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  }
                },
                child: Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
