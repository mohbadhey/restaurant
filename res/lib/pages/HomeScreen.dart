import 'package:flutter/material.dart';

import '../widgets/HomeBottomBar.dart';
import '../widgets/HomePagePosts.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for(int i = 1; i <4; i++)
              Image.asset("images/deal$i.jpg",
              height: 250,
              fit: BoxFit.cover,
              )
            ]),
          ),
     const    SizedBox(height: 15,),
     Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration:  BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,

          )
        ],
        
      ),
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        shrinkWrap: true,
        children: [
          for(int i = 1; i <9 ; i++)
          Container(
            padding: const EdgeInsets.all(5),
            decoration:  BoxDecoration(
              color: const Color.fromARGB(66, 255, 238, 0),
              borderRadius: BorderRadius.circular(10),
               boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,

          )]
            ),
            child: Image.asset("images/$i.png"),

          )
        ],

        ),
     ),
     const HomePagePosts(),
        ],
      ),
      bottomNavigationBar: const HomeBottomBar(),

    );
  }
}