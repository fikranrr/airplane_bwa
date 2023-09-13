import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/widget/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckOutPage extends StatelessWidget {
  const SuccessCheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgColor,
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(top: 212, bottom: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_success.png'),
                ),
              ),
            ),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: Light,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              margin: EdgeInsets.only(top: 50),
              width: 220,
              title: 'My Bookings',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
