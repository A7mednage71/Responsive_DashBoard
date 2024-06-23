import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hent});
  final String hent;
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            hintText: "Type customer name",
            filled: true,
            fillColor: Color(0xffFAFAFA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide.none,
            ),
          ),
        )
      ],
    );
  }
}
