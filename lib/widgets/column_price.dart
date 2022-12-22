import 'package:flutter/material.dart';

class ColumnPrice extends StatefulWidget {
  const ColumnPrice({Key? key, required this.text, required this.price, required this.intensiveColor}) : super(key: key);

  final String text;
  final int price;
  final bool intensiveColor;

  @override
  State<ColumnPrice> createState() => _ColumnPriceState();
}

class _ColumnPriceState extends State<ColumnPrice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(
            color: widget.intensiveColor ? const Color(0xff91003a) : const Color(0xff91003a).withOpacity(.5),
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "\$${widget.price} USD",
          style: TextStyle(
            color: widget.intensiveColor ? const Color(0xff91003a) : const Color(0xff91003a).withOpacity(.5),
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}