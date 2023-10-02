import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,

      ),
      child: 
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
               Icon(Icons.home ,
          color: Colors.yellow,
          size: 32,
          ),
          Text(
            "home",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
            ],
          ),
          const Column(
            children: [
               Icon(Icons.search ,
          color: Colors.yellow,
          size: 32,
          ),
          Text(
            "search",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
            ],
          ),
          InkWell(
            onTap: () {
           Navigator.pushNamed(context, "CartPage");
            },
            child: const Column(
              children: [
                 Icon(Icons.shop ,
            color: Colors.yellow,
            size: 32,
            ),
            Text(
              "cart",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            )
              ],
            ),
          ),
          const Column(
            children: [
               Icon(Icons.person ,
          color: Colors.yellow,
          size: 32,
          ),

          Text(
            "person",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
            ],
          )
         
        ],
      ),
    );
  }
}