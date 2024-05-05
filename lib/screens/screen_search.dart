import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wheather_app/applications/weather%20bloc/bloc/weatherbloc_bloc.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});
  TextEditingController searchController = TextEditingController();
  Widget getWeatherIcon(int code) {
    switch (code) {
      case >= 200 && < 300:
        return Image.asset('assets/1.png');
      case >= 300 && < 400:
        return Image.asset('assets/2.png');
      case >= 500 && < 600:
        return Image.asset('assets/3.png');
      case >= 600 && < 700:
        return Image.asset('assets/4.png');
      case >= 700 && < 800:
        return Image.asset('assets/5.png');
      case == 800:
        return Image.asset('assets/6.png');
      case > 800 && <= 804:
        return Image.asset('assets/7.png');
      default:
        return Image.asset('assets/7.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
          decoration: const BoxDecoration(color: Colors.transparent),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40.0, right: 14, left: 14),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5),
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.black12),
                        hintText: 'search city...',
                        hintStyle: const TextStyle(color: Colors.black12),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(color: Colors.black38),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(color: Colors.black38),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(color: Colors.black38),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (searchController.text.toString() == '') {
                            } else {
                              BlocProvider.of<WeatherblocBloc>(context).add(
                                  GetCurrentWeatherByCityName(
                                      query: searchController.text.toString()));
                            }
                          },
                          child: const Text('Search')))
                ],
              ),
            ),
            BlocBuilder<WeatherblocBloc, WeatherblocState>(
              builder: (context, state) {
                return state.weatherByCityName == null
                    ? const SizedBox()
                    : Column(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .4,
                              child: getWeatherIcon(state
                                  .weatherByCityName!.weatherConditionCode!)),
                          Center(
                            child: Text(
                              '${state.weather!.temperature!.celsius!.round()}°C',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 55,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Center(
                            child: Text(
                              state.weather!.weatherMain!.toUpperCase(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Center(
                            child: Text(
                              DateFormat('EEEE dd ●')
                                  .add_jm()
                                  .format(state.weather!.date!),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Center(
                            child: Text(
                              state.weatherByCityName!.areaName.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      );
              },
            ),
            Expanded(
              child: BlocBuilder<WeatherblocBloc, WeatherblocState>(
                builder: (context, state) {
                  return state.weatherByCityName == null
                      ? Center(child: Text('Search a place name to\nfetch the weather',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  ),),)
                      : GridView.count(
                          // Two columns in the grid
                          crossAxisCount: 3,
                          // Add spacing between grid items
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0,
                          // Generate 100 widgets with their index displayed
                          children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/humidity_8691491.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Humidity',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      state.weatherByCityName!.humidity
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/pressure_6801594.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Pressure',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      state.weatherByCityName!.pressure
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/6.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Temp. feels like',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      state.weatherByCityName!.tempFeelsLike!.celsius!.round()
                                          .toString()+'°C',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                               Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/sun_2904068.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Max. temp',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      state.weatherByCityName!.tempMax!.celsius!.round()
                                          .toString()+'°C',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                                Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/cloudy_1163661.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Min. temp',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      state.weatherByCityName!.tempMin!.celsius!.round()
                                          .toString()+'°C',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                               Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/11.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Sunrise',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(DateFormat('hh:mm a').format( state.weatherByCityName!.sunrise!),
                                     
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            
                             Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/12.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Sunset',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(DateFormat('hh:mm a').format( state.weatherByCityName!.sunset!),
                                     
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                               Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/wind-sign_9138980.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Wind',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(state.weatherByCityName!.windSpeed
                                        .toString()+' kmp' ,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(84, 128, 128, 128),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: Image.asset(
                                          'assets/wind_5124018.png'),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Wind Gust',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(state.weatherByCityName!.windGust
                                        .toString()+' kmp' ,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            
                              
                            ]);
                },
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
