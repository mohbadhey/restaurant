import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 245, 222, 140),
            width: double.infinity,
            height: 360,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child:  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                            )
                          ]
                        ),
                        child: const Icon(Icons.favorite,
                        size: 30,
                        color: Colors.yellow,
                        ),
                      )

                    ],
                  ),

                ),
                Image.asset("images/2.png",
                height: 250,
                width: 250,
                fit:  BoxFit.contain,
                )
              ],
            ),
          ),
       const   SizedBox(
            height: 10,
          ),

          Container(
               padding: const EdgeInsets.all(15),
               margin: const EdgeInsets.symmetric(horizontal: 20),
               decoration: BoxDecoration(
                          color: Colors.white,
                       
                          boxShadow:  [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                            )
                          ]
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Item Name",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(children: [
                              Text(
                              " \$50",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            ),
                              Text(
                              " 400 Gram",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
             



                            ],)
                          ],
                        ),

          ),
            const SizedBox(height: 10,),
                        Container(
                           padding: const EdgeInsets.symmetric( horizontal: 7 , vertical: 8),
                             margin: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                          color: Colors.white,
                       
                          boxShadow:  [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                            )
                          ]
                        ),
                        child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product details",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),

                            ),
                            SizedBox(height: 11,),
                            Text(
                              "this is thebproduct descibtion of the prodect this is thebproduct descibtion of the prodectthis is thebproduct descibtion of the prodect",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),



                        ),
                    const    SizedBox(height: 10,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("only for you",
                           style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                          
                          ),
                        ),
                        const SizedBox(height: 7,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                           
                    
                          children:[
                             for(int i =1;i<9; i++)

                              Container(
                                height: 90,
                                width: 90,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(top: 8 , bottom:8  , left: 20),
                                decoration:  BoxDecoration(
                                  color: Colors.yellow,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 8,
                                      spreadRadius: 1,
                                    )
                                  ]
                                ),
                                child: Image.asset("images/$i.png",
                                fit: BoxFit.contain,
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    )
                      
        ],
      ),
    );
  }
}
