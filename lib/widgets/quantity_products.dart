import 'package:flutter/material.dart';

class QuantityProducts extends StatefulWidget {
  const QuantityProducts({Key? key}) : super(key: key);

  @override
  State<QuantityProducts> createState() => _QuantityProductsState();
}

class _QuantityProductsState extends State<QuantityProducts> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 110),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () => _increment(),
            child: Container(
              height: 40,
              width: 70,
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
                  bottomLeft: Radius.circular(60),
                  topRight: Radius.circular(60)
                ),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 18),
            ),
          ),
          SizedBox(
            child: Text(
              "$quantity",
              style: const TextStyle(
                color: Color(0xff91003a),
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          InkWell(
            onTap: () => _decrement(),
            child: Container(
              height: 40,
              width: 60,
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
                  bottomRight: Radius.circular(60),
                  topLeft: Radius.circular(60)
                ),
              ),
              child: const Center(
                child: Text(
                  "-",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ]
      ),
    );
  }

  _increment() {
    setState(() {
      quantity += 1;
    });
  }

  _decrement() {
    setState(() {
      quantity -= 1;
      if (quantity < 1) {
        quantity = 1;
      }
    });
  }

}