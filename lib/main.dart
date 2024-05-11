import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/applications/weather%20bloc/bloc/weatherbloc_bloc.dart';
import 'package:wheather_app/screens/screen_home.dart';
import 'package:wheather_app/screens/screen_main.dart';
import 'package:wheather_app/screens/screen_wind.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherblocBloc>(create: (context) => WeatherblocBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainTabScreen(),
      ),
    );
  }
}
