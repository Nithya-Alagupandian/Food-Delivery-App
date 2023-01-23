import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AppBarUI extends StatelessWidget {
  const AppBarUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              //print("Clicked");
            },
            child: Row(
              children: [
                const Icon(
                  Icons.home,
                  color: primaryColor,
                  size: 25,
                ),
                Text("Work",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold)),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 25,
                )
              ],
            ),
          ),
          Text(
              "Mig 91, Ground Floor, Mogappair Eri Scheme, Mogappair East, chennai - 600037",
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black45)),
        ],
      ),
      actions: [userIcon()],
    );
  }

  Widget userIcon() {
    return IconButton(
      icon: const Icon(
        Icons.account_circle,
        size: 35,
      ),
      onPressed: () {},
      color: primaryColor,
    );
  }
}
