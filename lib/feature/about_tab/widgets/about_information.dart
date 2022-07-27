import 'package:flutter/material.dart';

class AboutInformation extends StatelessWidget {
  const AboutInformation(this.label, this.value);

  final String? label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(label!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[700],
                )),
          ),
          Expanded(
            flex: 6,
            child: Text(value!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
          ),
        ],
      ),
    );
  }
}
