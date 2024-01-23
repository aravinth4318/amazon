import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'listimage.dart';


class azn extends StatefulWidget {
  const azn({super.key});

  @override
  State<azn> createState() => _aznState();
}

class _aznState extends State<azn> {
  int currentposition=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(backgroundColor: Color(0xff89dbde),
        flexibleSpace:
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextFormField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              filled: true,fillColor: Color(0xffffffff),
              labelStyle: TextStyle(color: Colors.black),
              hintStyle: TextStyle(color: Colors.black),
              labelText: "Search Amazon.in",
              hintText: "Search Amazon.in",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),

              //2 Icons In Textformfield Use The Suffixicons
              suffixIcon:
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.qr_code_scanner_sharp),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.mic,),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Container(color: Color(0xffffffff),
          child: Column(
            children: [
              Container(color: Color(0xffb7e8ed),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width:  50,
                      //decoration: BoxDecoration(),
                      child: Icon(Icons.location_on_outlined),
                    ),
                    Container(
                      height: 20,
                      width:  300,
                      //decoration: BoxDecoration(),
                      child: Text("Deliver To Gt - 641010",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),

              //listview

              // Container(color: Color(0xffffffff),
              //   height: 100,
              //   //width:  500,
              //   child:
              //   ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: 10,
              //       itemBuilder: (BuildContext con, index)
              //       {
              //         return Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Container(
              //             height: 100,
              //             width:  150,
              //             //decoration: BoxDecoration(border: Border.all()),
              //             //color: Colors.blue,
              //             child: Image(
              //               image: AssetImage("assets/img/aznk5.jfif"),
              //               //fit: BoxFit.fill,
              //             ),
              //           ),
              //         );
              //       }
              //   ),
              // ),



              Container(
                //decoration: BoxDecoration(border: Border.all()),
                height: MediaQuery.of(context).size.height * .15,
                child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: a1.length,
                    itemBuilder: (BuildContext con, index) {
                      return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:  MediaQuery.of(context).size.height *.10,
                                width: MediaQuery.of(context).size.width *.30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(a1[index].image),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),),
                            Text(a1[index].text),
                          ]);


                    }),
              ),


              //carouselsider

              SizedBox(height: 10,),

              //carouselider & DotsIndicator

              Container(//color: Color(0xffb7e8ed),

                color: Colors.white,
                height: 200,
                width:  double.infinity,
                child:
                CarouselSlider.builder(
                    options: CarouselOptions(
                      aspectRatio: 50/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      height: 200,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index,reason){
                        setState(() {
                          currentposition=index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                    itemCount: a3.length,
                    itemBuilder: (BuildContext con,index,c)
                    {
                      return Container(
                        height: 100,
                        width:  double.infinity,
                        color: Colors.lightGreen,
                        child: Image(image: AssetImage(a3[index].image),
                          fit: BoxFit.fill,
                        ),

                      );
                    }
                ),

              ), DotsIndicator(
                dotsCount: a3.length,
                position: currentposition,
                decorator: DotsDecorator(
                  color: Colors.black87, // Inactive color
                  activeColor: Colors.redAccent,
                ),
              ),


              SizedBox(height: 10,),

              //gridview

              Container(
                height: 400,
                //decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                width: double.infinity,
                color: Colors.white,
                child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 4,
                  itemBuilder: (context,index) {
                    return Container(
                      height: 10,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),

                      //color: Colors.cyanAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 120,
                            width:  120,
                            child: Image(image: AssetImage(a4[index].image,),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(a4[index].text,
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 10,),

              //gridview

              Container(
                height: 400,
                //decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                width: double.infinity,
                color: Colors.white54,
                child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 4,
                  itemBuilder: (context,index) {
                    return Container(
                      height: 10,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      //color: Colors.cyanAccent,
                      child:
                      Column(
                        children: [
                          Image(image: AssetImage("assets/img/aznf2.jfif",),
                            //fit: BoxFit.fill,
                          ),
                          Text("Fashion",
                            style:
                            TextStyle(color: Colors.black,fontSize: 25),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 10,),

              //gridview

              Container(
                height: 300,
                //decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                width:  double.infinity,
                color: Colors.white,
                child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 4,
                  itemBuilder: (context,index) {
                    return Container(
                      height: 10,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/aznm1.jfif",),
                        ),
                        border: Border.all(color: Colors.white),
                      ),
                      //color: Colors.cyanAccent,
                      child:
                      // Column(
                      //   children: [
                      //Image(image: AssetImage("assets/img/aznm1.jfif"),
                      //fit: BoxFit.fill,
                      //),
                      // Image.asset("assets/img/aznk5.jfif",
                      //   height: 150,
                      //   fit: BoxFit.fill,
                      // ),

                      Text("Fresh",
                        style: TextStyle(
                            color: Colors.black,fontSize: 25),
                      ),
                      //   ],
                      // ),
                    );
                  },
                ),
              ),




              Container(
                height: 300,
                width:  400,
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 100,
                                width:  150,
                                child: Image(
                                  image: AssetImage("assets/img/pay.png",),
                                ),
                              ),
                              Container(
                                height: 100,
                                width:  150,
                                child: Image(
                                  image: AssetImage("assets/img/sendd.jpg",),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width:  150,
                                  child: Image(
                                    image: AssetImage("assets/img/scan.png",),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width:  150,
                                  child: Image(
                                    image: AssetImage("assets/img/bill.jpg",),
                                  ),
                                ),
                                // Container(
                                //   //decoration: BoxDecoration(border: Border.all()),
                                //   height: MediaQuery.of(context).size.height * .15,
                                //   child:  ListView.builder(
                                //       scrollDirection: Axis.horizontal,
                                //       itemCount: a1.length,
                                //       itemBuilder: (BuildContext con, index) {
                                //         return Column(
                                //             children: [
                                //               Padding(
                                //                 padding: const EdgeInsets.all(8.0),
                                //                 child: Container(
                                //                   height:  MediaQuery.of(context).size.height *.10,
                                //                   width: MediaQuery.of(context).size.width *.30,
                                //                   decoration: BoxDecoration(
                                //                     image: DecorationImage(
                                //                         image: AssetImage(a1[index].image),
                                //                         fit: BoxFit.fill),
                                //                     borderRadius: BorderRadius.circular(20),
                                //                   ),
                                //                 ),),
                                //               Text(a1[index].text),
                                //             ]);
                                //
                                //
                                //       }),
                                // ),
                              ],
                            ),
                          ),
                        ),



                      ],
                    ),
                  ],
                ),
              ),




              // Container(
              //   height: 300,
              //   width:  400,
              //   decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              //   child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Row(
              //         children: [
              //           Column(
              //             children: [
              //               Image(image: AssetImage("assets/img/pay.png"),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //           Container(
              //             height: 50,
              //             width:  50,
              //             child: Image(
              //               image: AssetImage("assets/img/sendd.jpg",),
              //             ),
              //           ),
              //           Row(
              //             children: [
              //               Column(
              //                 children: [
              //                   Container(
              //                     height: 50,
              //                     width:  50,
              //                     child: Image(
              //                       image: AssetImage("assets/img/scan.png",),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Column(
              //                 children: [
              //                   Container(
              //                     height: 50,
              //                     width:  50,
              //                     child: Image(
              //                       image: AssetImage("assets/img/bill.jpg",),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //
              //             ],
              //           ),
              //         ],
              //       ),
              // ),
            ],
          ),

        ),
      ),
    );



  }
}