import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
  final double _cardHeight = 150;
  bool _isExpanded = false;

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
      backgroundColor: const Color(0xFF302921),
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
                          offset: const Offset(0, 480),
                          child: SizedBox(
                            width: double.infinity,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/tik-sign.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/lock.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ],
                                  ),
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFFAFAF9),
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                      Text('% /',
                                          style: TextStyle(fontSize: 16)),
                                      Text(
                                        '229',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text('mi',
                                          style: TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      decoration: const BoxDecoration(
                        color: Color(0xFFFAFAF9),
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: _isExpanded ? 430 : 150,
                      width: double.infinity,
                      duration: Duration(milliseconds: 500),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/images/lock.png',
                                      width: 24,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/images/larg-unlock.png',
                                      width: 36,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/images/light.png',
                                      width: 36,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/images/horn.png',
                                      width: 36,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/images/fan.png',
                                      width: 36,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                indent: 8,
                                endIndent: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Remote control',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 200,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isExpanded = !_isExpanded;
                                      });
                                    },
                                    icon: Icon(
                                      !_isExpanded
                                          ? CupertinoIcons.chevron_down
                                          : CupertinoIcons.chevron_up,
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                              if(_isExpanded)
                                Expanded(
                                  flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GridView.builder(
                                        padding: const EdgeInsets.only(top: 0.0),
                                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                          crossAxisSpacing: 10.0,
                                            mainAxisSpacing: 10.0,
                                            childAspectRatio: 2.0
                                          ),
                                      itemCount: 6,
                                        itemBuilder: (context,index){
                                            return Card(
                                              color: Colors.grey,
                                              child: Center(
                                                child: Text(
                                                  'Item $index',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                            );
                                        },
                                      ),
                                    ),),
                              if(_isExpanded)
                              Expanded(
                                flex: 1,
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 8.0,bottom: 16,right: 8.0,left: 8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.info_outline,color:Color(0xff0947cf) ,),
                                      SizedBox(width: 8,),
                                      Text('MORE INFORMATION',style: TextStyle(fontWeight: FontWeight.bold,
                                          color: Color(0xff0947cf)),)
                                    ],
                                  ),
                                ),
                              )
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
                      height: 100,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                               Row(

                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                     children: [
                                       Image.asset('assets/images/BMW-car.png',height: 18,),
                                       SizedBox(width: 16,),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text('Vehicle finder',style: TextStyle(fontWeight: FontWeight.bold),),
                                           Text('Vandover Rd, Henrico VA 23229',style: TextStyle(color: Colors.grey),)
                                         ],
                                       )

                                     ],
                                   ),
                                   Text('MAP',style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xff0947cf) ),)
                                 ],
                               ),

                              ],
                            ),
                          )

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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
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
                              height: 40,
                              width: 24,
                              color: Colors.white,
                            ),
                            const Text(
                              'iX xDrive50',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Image.asset(
                              'assets/images/car_icon.png',
                              width: 60,
                              height: 40,
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/BMW-car.png',
              width: 26,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/map.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/discover.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/service.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              width: 24,
            ),
            label: ' ',
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
