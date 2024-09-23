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
  int _selectedIndex = 0;

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

  // Function to handle BottomNavigationBar taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
      backgroundColor:const Color(0xFF302921),
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
                          offset: const Offset(0, 500),
                          child: SizedBox(
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
                                    style: TextStyle(color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(

                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAF9),
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  thumbShape: SliderComponentShape.noThumb,
                                  activeTrackColor: Colors.white,
                                  inactiveTrackColor: Colors.grey,
                                ),
                                child: Slider(
                                  value: _sliderValue,
                                  min: 0.0,
                                  max: 100,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _sliderValue = newValue;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/car_battery_icon.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        const SizedBox(width: 16),
                                        const Text(
                                          'State of charge',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          '64',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text('% /', style: TextStyle(fontSize: 16)),
                                        Text(
                                          '229',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text('mi', style: TextStyle(fontSize: 16)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(

                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAF9),
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 120,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(

                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAF9),
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 120,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(

                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAF9),
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 120,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(

                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAF9),
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 120,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(

                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAF9),
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 120,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 100,
                  color: Colors.black.withOpacity(_opacity),
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
                            ),
                            const Text(
                              'iX xDrive50',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Image.asset(
                              'assets/images/img_2.png',
                              width: 60,
                              height: 30,
                              color: Colors.white,
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.battery_charging_full),
            label: 'Battery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Car',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
