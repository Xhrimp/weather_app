import 'package:flutter/material.dart';
import 'package:weather_app/helper/text_style_helper.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool tempC = true;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5.0,
      clipBehavior: Clip.antiAlias,
      color: Colors.black.withOpacity(0.9),
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: 48,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      tempC = !tempC;
                    });
                  },
                  style: ButtonStyle(),
                  child: tempC
                      ? Text(
                          '\u2103',
                          style:
                              TextStyle(color: IconStyleHelper.iconStyle.color),
                        )
                      : Text(
                          '\u2109',
                          style:
                              TextStyle(color: IconStyleHelper.iconStyle.color),
                        )),
            ),
            SizedBox(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home, color: IconStyleHelper.iconStyle.color)),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, color: IconStyleHelper.iconStyle.color)),
          ],
        ),
      ),
    );
  }
}
