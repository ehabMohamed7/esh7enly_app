import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final String text;

  const OrDivider({super.key, this.text = 'OR'});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade300)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFF5A5A75),
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey.shade300)),
      ],
    );
  }
}
