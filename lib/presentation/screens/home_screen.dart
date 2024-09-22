import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController=ScrollController();
  double _opacity = 0.0;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener((){
      double scrollOffset = _scrollController.offset;
      setState(() {
        _opacity = (scrollOffset /50).clamp(0.0, 0.5);
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
          Transform.translate(
            offset: const Offset(0, -180),
            child: Stack(
              children: [
                ListView(

                  shrinkWrap: false,
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/background.png'),
                        Transform.translate(
                            offset: Offset(100, 600),
                            child: Text('CHECK STATUS',style: TextStyle(fontSize: 24),)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Transform.translate(
                        offset: Offset(0, 50),
                        child: Container(
                          height: 300,
                          color: Colors.green,),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Transform.translate(
                        offset: Offset(0, 50),
                        child: Container(
                          height: 300,
                          color: Colors.red,),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Transform.translate(
                        offset: Offset(0, 50),
                        child: Container(
                          height: 300,
                          color: Colors.yellow,),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0), // No border radius (if needed, change this)
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Blur effect
                child: Container(
                  height: 100,
                  color: Colors.white.withOpacity(_opacity), // Semi-transparent for glossy effect
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.access_alarm,color: Colors.white,),
                            Text(
                              'iX xDrive50',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Icon(Icons.car_repair,color: Colors.white,),
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
