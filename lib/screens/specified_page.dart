import 'package:flutter/material.dart';
import 'package:menu_for_today/models/menu.dart';
import 'package:menu_for_today/screens/home_page.dart';
import 'package:menu_for_today/utils/color.dart';
import 'package:menu_for_today/widgets/button_place_order.dart';
import 'package:menu_for_today/widgets/column_price.dart';
import 'package:menu_for_today/widgets/quantity_products.dart';

class SpecifiedPage extends StatefulWidget {
  const SpecifiedPage({Key? key, required this.menu}) : super(key: key);

  final Menu menu;

  @override
  State<SpecifiedPage> createState() => _SpecifiedPageState();
}

class _SpecifiedPageState extends State<SpecifiedPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF91003a),
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 251, 226),
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color:Color(0xFF91003a),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70)
              )
            )
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 300),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 251, 226),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70)
              )
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: IconButton(
                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomePage(color: primaryColor))), 
                          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30)
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                ),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/273693830_506235800931318_4006157328779822519_n.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              child: IconButton(
                                onPressed: () {}, 
                                icon: const Icon(Icons.shopping_cart_sharp, color: Colors.white)
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "SALAD",
                        style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          fontSize: 16,
                          letterSpacing: 1.3
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '"${widget.menu.title}"',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "RozhaOne"
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: 300,
                  margin: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.menu.image),
                      fit: BoxFit.cover
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(180)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(.8),
                        spreadRadius: 1,
                        offset: const Offset(0, 4),
                        blurRadius: 10
                      )
                    ]
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                   "INGREDIENTS: ${widget.menu.description.toLowerCase()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xff91003a).withOpacity(.7),
                      fontSize: 18,
                      height: 1.3
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const <Widget>[
                      ColumnPrice(text: "Regular", price: 12, intensiveColor: true),
                      ColumnPrice(text: "Large", price: 14, intensiveColor: false),
                      ColumnPrice(text: "Jumbo", price: 18, intensiveColor: false)
                    ]
                  ),
                ),
                const SizedBox(child: QuantityProducts()),
                const SizedBox(child: ButtonPlaceOrder())
              ]
            ),
          )
        ],
      )
    );
  }
}