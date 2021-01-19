import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/widgets/command.dart';
import 'package:service_app/widgets/info.dart';
import 'package:service_app/widgets/photo.dart';

class ServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Photo(),
          Info(),
          Command(),
        ],
      ),
    );
  }
}
