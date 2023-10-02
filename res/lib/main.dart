import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:res/pages/HomeScreen.dart';
import 'package:res/pages/itemPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    
  
  void initState() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
    
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => const HomeScreen(),
           "itempage" : (context) =>  const ItemPage()
      },
     // home: const HomeScreen(),

    );
    }}
      
