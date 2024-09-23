import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  double _opacity = 0.0;
  double _sliderValue = 60.0;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      double scrollOffset = _scrollController.offset;
      setState(() {
        _opacity = (scrollOffset / 2).clamp(0.0, 0.5);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [

            SingleChildScrollView(
            controller: _scrollController,
            child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/background.png'),
                      Transform.translate(
                        offset: const Offset(0, 620),
                        child: SizedBox(
                          //  color: Colors.yellow,
                          width: double.infinity,
                          child: Center(
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'CHECK STATUS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    )
                                  ],
                                ),
                                Text(
                                  'Updated from vehicle 9/22/2024 9:43 PM',
                                  style:
                                      TextStyle(color: Colors.grey.shade500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Transform.translate(
                      offset: const Offset(0, 30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFE8E8E8),
                            borderRadius: BorderRadius.circular(8.0)),
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: SliderComponentShape.noThumb,
                                activeTrackColor: Colors
                                    .white, // Customize active track color
                                inactiveTrackColor: Colors.grey,
                                // Customize inactive track color
                              ),
                              child: Slider(
                                  value: _sliderValue,
                                  min: 0.0,
                                  max: 100,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _sliderValue = newValue;
                                    });
                                  }),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/car_battery_icon.png',height: 30,width: 30,),
                                     const SizedBox(width: 16,),
                                      const Text('State of charge',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Text('64',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                      Text('% /',style: TextStyle(fontSize: 16),),
                                      Text('229',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                      Text('mi',style: TextStyle(fontSize: 16),),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Transform.translate(
                      offset: const Offset(0, 50),
                      child:  Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFE8E8E8),
                            borderRadius: BorderRadius.circular(8.0)),
                        height: 200,),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Transform.translate(
                      offset: const Offset(0, 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFE8E8E8),
                            borderRadius: BorderRadius.circular(8.0)),
                        height: 200,),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Transform.translate(
                      offset: const Offset(0, 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFE8E8E8),
                            borderRadius: BorderRadius.circular(8.0)),
                        height: 200,),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Transform.translate(
                      offset: const Offset(0, 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFE8E8E8),
                            borderRadius: BorderRadius.circular(8.0)),
                        height: 200,),
                    ),
                  ),
                ],
              ),
            ),],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  0), // No border radius (if needed, change this)
              child: BackdropFilter(
                filter:
                    ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Blur effect
                child: Container(
                  height: 100,
                  color: Colors.black.withOpacity(
                      _opacity), // Semi-transparent for glossy effect
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/img.png',
                              height: 30,
                              width: 60,
                              color: Colors.white,
                              alignment: const Alignment(-2.5, 0),
                            ),
                            const Text(
                              'iX xDrive50',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Image.asset(
                              'assets/images/img_2.png',
                              width: 60,
                              height: 30,
                              color: Colors.white,
                              alignment: const Alignment(-4, 0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
