import 'package:flutter/material.dart';
import 'package:menu_for_today/data/data_data.dart';
import 'package:menu_for_today/models/menu.dart';
import 'package:menu_for_today/widgets/cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF91003a),
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 251, 226)
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFF91003a),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
              )
            )
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              child: IconButton(
                                onPressed: () {}, 
                                icon: const Icon(Icons.add, color: Colors.white)
                              ),
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                              child: IconButton(
                                onPressed: () {}, 
                                icon: const Icon(Icons.menu_outlined, color: Colors.white, size: 28,)
                              ),
                            )
                          ],
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
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 35),
                  child: const Text(
                    'Menu For Today',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      wordSpacing: 4,
                      fontFamily: "RozhaOne",
                    ),
                  ),
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(left: 35, top: 200),
            height: MediaQuery.of(context).size.height,
            child: RotatedBox(
              quarterTurns: -1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(Icons.comment, color: Color.fromARGB(255, 255, 251, 226))
                    ),
                  ),
                  menuOptions(text: "DRINKS", underline: false),
                  menuOptions(text: "BURGUERS", underline: false),
                  menuOptions(text: "SUSHI", underline: false),
                  menuOptions(text: "PIZZA", underline: false),
                  menuOptions(text: "SOUP", underline: false),
                  menuOptions(text: "SALAD", underline: false),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 90, top: 200),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 252, 233),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45)
              )
            ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: firstData.menu.length,
              itemBuilder: (BuildContext context, int index) {
                Menu menu = firstData.menu[index];
                return Cards(menu: menu, color: widget.color);
              },
            )
          ),
        ],
      )
    );
  }
}

Widget menuOptions({required String text, required bool underline}) {
  return GestureDetector(
    onTap: () {},
    child: Text(
      text,
      style: TextStyle(
        color: const Color.fromARGB(255, 255, 251, 226),
        fontSize: 13,
        letterSpacing: 2,
        decoration: underline ? TextDecoration.underline : TextDecoration.none
      )
    ),
  );
}