
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wheather_app/applications/weather%20bloc/bloc/weatherbloc_bloc.dart';
import 'package:wheather_app/screens/screen_home.dart';
import 'package:wheather_app/screens/screen_search.dart';
import 'package:wheather_app/screens/screen_wind.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    ScreenSearch(),
    const ScreenWind()

    
  ];

  @override
  Widget build(BuildContext context) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<WeatherblocBloc>(context).add(const GetCurrentWeather());
    });
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          _selectedIndex = 0;
        });
        return false;
      },
      child: Scaffold(
       
           
        backgroundColor: const Color.fromARGB(64, 250, 250, 250),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(19, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.amber,
                iconSize: 24,
                curve: Curves.bounceIn,
                textStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    iconColor: Colors.black38,
                    text: 'Weather',
                  ),
                  GButton(
                    icon: Icons.search,
                    iconColor: Colors.black38,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.wind_power_sharp,
                    iconColor: Colors.black38,
                    text: 'Wind',
                  ),
                  
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
