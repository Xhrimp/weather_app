import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/helper/text_style_helper.dart';
import 'package:weather_app/screen/layout/app_bar.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool tempC = true;
  int timeFont = 14;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/weather_background.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: const NavBar(),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/weather_background.jpg'),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
              child: SafeArea(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Text(
                                '9:54 AM',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w300),
                              ),
                              Row(children: [
                                Text(
                                  'Hà Nội',
                                  style: TextStyleHelper.commonStyle,
                                ),
                                Icon(
                                  Icons.location_on_sharp,
                                  size: 20,
                                )
                              ])
                            ],
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('29\u00B0',
                                      style: TextStyleHelper.commonStyle
                                          .copyWith(
                                              fontSize: 75,
                                              fontWeight: FontWeight.w100)),
                                  const Icon(Icons.cloud)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Text(
                                '9:54 AM',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w300),
                              ),
                              Row(children: [
                                Text(
                                  'Hà Nội',
                                  style: TextStyleHelper.commonStyle,
                                ),
                                Icon(
                                  Icons.location_on_sharp,
                                  size: 20,
                                )
                              ])
                            ],
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('29\u00B0',
                                      style: TextStyleHelper.commonStyle
                                          .copyWith(
                                              fontSize: 75,
                                              fontWeight: FontWeight.w100)),
                                  const Icon(Icons.cloud)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
