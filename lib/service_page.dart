import 'package:flutter/material.dart';
import 'package:service_app/widgets/command.dart';
import 'package:service_app/widgets/info.dart';
import 'package:service_app/widgets/photo.dart';

class ServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Photo(),
                Info(),
                Command()
              ],
            ),

          ),
        ),
      ),
    );
  }
}
