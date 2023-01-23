import 'package:flutter/material.dart';
import 'package:swiggy/screens/filter_screen.dart';

import '../utils/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      // padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(20)),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            //const FilterScreen();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FilterScreen()));
          },
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Search for the restaurant, item or more",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black54),
                      ),

                      /* child: SizedBox(
                        // height: 20,
                        child: TextField(
                          decoration:
                              InputDecoration.collapsed(hintText: 'Username'),
                          style: TextStyle(
                              fontSize: 40.0, height: 2.0, color: Colors.black),
                        ),
                      ), */
                    ),
                  ],
                ),
              ),
              const Icon(Icons.search, color: primaryColor, size: 25),
              const SizedBox(
                height: 25,
                child: VerticalDivider(
                  color: Colors.black26,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 0,
                  width: 20,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.keyboard_voice_rounded,
                    color: primaryColor, size: 25),
                onPressed: () {},
                color: primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
