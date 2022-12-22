import 'package:flutter/material.dart';
import 'package:menu_for_today/models/menu.dart';
import 'package:menu_for_today/data/data_data.dart';
import 'package:menu_for_today/screens/specified_page.dart';
import 'package:menu_for_today/utils/color.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key, required this.menu, required this.color}) : super(key: key);

  final Menu menu;
  final Color color;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  bool theme = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          theme = !(theme);
        });
        theme ? Colors.white : widget.color;
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => SpecifiedPage(menu: widget.menu)));
      },
      child: Container(
        //width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 54, right: 27),
              decoration: BoxDecoration(
                gradient: theme ? LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 8, 46, 10).withOpacity(.9), 
                    const Color.fromARGB(255, 2, 99, 5), 
                    const Color.fromARGB(255, 13, 109, 16), Colors.green],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ) : const LinearGradient(
                  colors: [Colors.white, Colors.white],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                 ),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromARGB(221, 214, 214, 214),
                    blurRadius: 1,
                    offset: Offset(0, 0),
                    spreadRadius: 0
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.menu.title,
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Text(
                        widget.menu.description,
                        style: TextStyle(
                          color: primaryColor.withOpacity(.7),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "From \$${widget.menu.price} USD",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.only(left: 20, bottom: 5),
              decoration: BoxDecoration(
                color:const Color(0xFF91003a),
                borderRadius: const BorderRadius.all(
                  Radius.circular(60)
                ),
                image: DecorationImage(
                  image: AssetImage(widget.menu.image),
                  fit: BoxFit.cover
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}