import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:wheather_app/applications/weather%20bloc/bloc/weatherbloc_bloc.dart';

class ScreenWind extends StatelessWidget {
  const ScreenWind({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
           
            child: Stack(
              children: [
                 Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF673AB7)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration:
                      const BoxDecoration(color: Colors.transparent),
                ),
              ),
                BlocBuilder<WeatherblocBloc, WeatherblocState>(
                  builder: (context, state) {
                    return state.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(color: Colors.amber,backgroundColor: Colors.white24,),
                          )
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('WIND',style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w600)),
                              Lottie.asset('assets/lottie/wind.json'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: Image.asset(
                                              'assets/wind_1146850.png'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Wind',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Text(
                                              '${state.weather!.windSpeed!} m/h',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                   SizedBox(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Image.asset(
                                              'assets/wind_5124018.png'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Gust',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Text(
                                              '${state.weather!.windGust!} m/h',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                 SizedBox(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Image.asset(
                                              'assets/wind-sign_1851043.png'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Wind Degree',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Text(
                                              '${state.weather!.windDegree!}°',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                   SizedBox(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Image.asset(
                                              'assets/humidity_8691491.png'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Humidity',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Text(
                                              '${state.weather!.humidity!}°',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                  ],)
                            ],
                          );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
