import 'package:flutter/material.dart';

class HomePagePosts extends StatelessWidget {
  const HomePagePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
               boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,

          )]
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "flash sale",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
              const  SizedBox(height: 10,) ,
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        shrinkWrap: true,
        children: [
          for(int i=1; i<9; i++)
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                )
              ]
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                 Navigator.pushNamed(context, "itempage");
                  },
                  child: Image.asset("images/$i.png",
                  fit: BoxFit.contain,
                  height: 130,
                  width: 120,
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  alignment: Alignment.centerLeft,
                  child:  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(

                        "item name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                         SizedBox(height: 7,),
                        Row(
                          children: [
                            Text(
                              "\$50",
                              style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                        ),
                            ),
                                SizedBox(height: 7,),
                                Text(
                              " / 1KG",
                              style: TextStyle(
                          fontSize: 16,
                  
                         
                        ),
                            ), 
                            Spacer(),
                              Icon(
                                Icons.favorite_border,
                                color: Color.fromARGB(255, 255, 251, 28),
                                size: 28,
                                )
                          
                          ],
                        )

                    ],
                  ),
                )
              ],
            ),
          ),

        ],
        )


              ],
            ),
    );
  }
}