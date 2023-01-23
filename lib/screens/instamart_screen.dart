import 'package:flutter/material.dart';

class InstamartScreen extends StatelessWidget {
  const InstamartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: 600,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 20,
            decoration: const BoxDecoration(
              //color: Color.fromARGB(255, 235, 240, 237),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  //stops: [0.1, 0.9],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Color.fromARGB(255, 231, 223, 225)]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    /*  prefixIcon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ), */
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10))),
                    hintText: 'searchHint',
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.red,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
