import 'package:flutter/material.dart';
import 'package:service_app/widgets/info.dart';

class Command extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 21.0),
          child: Text(
            'Команда',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        )
      ],
    );
  }
}
