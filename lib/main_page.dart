import 'package:flutter/material.dart';
import 'package:service_app/service_page.dart';
import 'package:service_app/widgets/review.dart';

const bgdColor = Color(0xffE5E5E5);
const textColor = Color(0xff251201);

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: textColor,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: textColor,
            ),
            onPressed: () {},
          ),
        ],
        title: Text(
          'Winchester',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: bgdColor,
        ),
        child: Stack(
          children: [
            Positioned(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ServicePage(),
                    SizedBox(
                      height: 20.0,
                    ),
                    Review(),
                    Container(
                      height: 80, // button height, so could scroll under lapping area
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 96.0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: textColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'ЗАПИСАТЬСЯ',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
