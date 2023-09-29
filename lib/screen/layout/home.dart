import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool tempC = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5.0,
          clipBehavior: Clip.antiAlias,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: SizedBox(
            height: kBottomNavigationBarHeight,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      setState(() {
                        tempC = !tempC;
                      });
                    },
                    child: tempC
                        ? const Text(
                            '\u2103',
                            style: TextStyle(color: Colors.black),
                          )
                        : const Text(
                            '\u2109',
                            style: TextStyle(color: Colors.black),
                          )),
                IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(162, 245, 139, 139),
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text('Hanoi'))
          ],
        )),
      ),
    );
  }
}
