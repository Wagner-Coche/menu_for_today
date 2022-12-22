import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonPlaceOrder extends StatelessWidget {
  const ButtonPlaceOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(right: 35, left: 35, bottom: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 8, 46, 10).withOpacity(.9), 
                const Color.fromARGB(255, 2, 99, 5), 
                const Color.fromARGB(255, 13, 109, 16), Colors.green],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            ),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30)
          ),
        ),
        child: const Center(
          child: Text(
            "PLACE ORDER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.3
            ),
          ),
        ),
      ),
    );
  }
}