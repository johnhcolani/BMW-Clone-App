import 'package:bmw_clone_app/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/splash_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    BlocProvider.of<SplashBloc>(context).add(StartSplash());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002B4B),
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashLoaded) {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()));
          }
        },
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            if (state is SplashLoading || state is SplashInitial) {
              return Center(
                child: Stack(

                  children: [
                    Image.asset(
                      'assets/images/my_bmw.png',
                      height: 150,
                      width: 150,
                    ),
                    const Opacity(
                        opacity: 0.1,
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: CircularProgressIndicator(

                            color: Colors.white,),
                        )),
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text("Error loading splash screen"),
              );
            }
          },
        ),
      ),
    );
  }
}
