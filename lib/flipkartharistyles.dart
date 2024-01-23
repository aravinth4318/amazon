import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:untitled/flipkart.dart';
import 'package:untitled/modelclass.dart';
import 'colors.dart';

class flipk2 extends StatefulWidget {
  const flipk2({super.key});

  @override
  State<flipk2> createState() => _flipk2State();
}

class _flipk2State extends State<flipk2> {
  int currentIndex=0;


  List<String> list = <String>
  ['Qty:1',
    '1',
    '2',
    '3',
    '4'];
  var dropdownvalue ="qty:1";




  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar:AppBar(
        backgroundColor: az,
        leading: GestureDetector(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const flipk()),

            );
          },  child:Icon(Icons.arrow_back,color: Colors.black,size: 30,),
        ),
        automaticallyImplyLeading: false,

        title: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none   ,
              prefixIcon: Icon(Icons.search),

              hintText: 'Search Amazon.in',

              suffixIcon: Container(

                height: 10,
                width:80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.qr_code_scanner_outlined,color: Colors.grey,),
                    ),
                    Icon(Icons.mic,color: Colors.grey,)
                  ],
                ),
              ),



            ),

          ),

        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_scanner_outlined,size: 30,),
          ),
        ],

      ),





      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              CarouselSlider.builder(
                  options: CarouselOptions(
                    onPageChanged: (index,reason){
                      setState(() {
                        currentIndex=index;
                      });
                    },
                    height: 400,
                    aspectRatio: 50/4,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,


                  ),
                  itemCount: lis.length,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                  {
                    return Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(lis[itemIndex].image,),




                    );

                  }


              ),
              Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [SizedBox(width: 10,),
                      Icon(Icons.rotate_left_sharp,color: gre,size: 35,),
                      SizedBox(width: 280,),
                      Icon(Icons.share,color:gre,size: 30,),
                    ],
                  ),




                  SizedBox(height: 400),
                  Row(
                    children: [SizedBox(width: 5,),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,color: Colors.grey,

                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),

                        child: Row(
                          children: [SizedBox(width: 8,),

                            Icon(Icons.info,color:gre,size: 30,),
                            SizedBox(width: 2,),
                            Text("Details",style: TextStyle(fontWeight: FontWeight.bold,color: gre,fontSize: 18),)
                          ],
                        ),

                      ),
                      SizedBox(width: 20,),
                      DotsIndicator(
                        dotsCount: lis.length,
                        position: currentIndex.toDouble(),




                      ),








                    ],
                  ),
                ],
              ),
            ],
            ),

            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Visit the V-Guard Store",style: TextStyle(color:Colors.green,fontSize: 15),),
                ),
                SizedBox(height: 5,),
                SizedBox(width: 30,),
                Text("4.3"),

                SizedBox(height: 3,),
                SizedBox(width: 5,),
                Container(
                  child: RatingBar.builder(initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemBuilder: (context, _) => Icon(
                      Icons.star_purple500_outlined,weight: 100,
                      color:yl,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(width: 6,),
                SizedBox(height: 6,),
                Text("81,910",style: TextStyle(color:am,fontWeight: FontWeight.bold,fontSize: 15),)

              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ReadMoreText(
                "V-Guard Rejive UV UF Water Purifier, Multi Stage Purification, "
                    "Next Generation UV Quartz Glass Chamber & Advanced UF Membrane, 6.5 Litre, "
                    "Blue Black (Not Suitable for tanker or borewell water  ",
                trimLines: 2,
                colorClickableText: Colors.red,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',style: TextStyle(),
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.blue),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Container(
                height: 33,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),color: Colors.red,

                ),
                child: Center(
                  child: RichText(text: TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(text: "Deal of the Day",
                            style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold,))
                      ]
                  ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(text: "-12%",
                      style: TextStyle(fontSize: 35,color: Colors.red)),

                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Icon(Icons.currency_rupee,size:20),
                    ),
                  ],
                ),
                RichText(text: TextSpan(text: "15,999",
                  style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.normal),),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [SizedBox(width: 5,),
                  RichText(text: TextSpan(text: "M.R.P.:",
                    style: TextStyle(fontSize: 15,color: Colors.black54),),
                  ),
                  RichText(text: TextSpan(text: "₹16,990",
                    style: TextStyle(fontSize: 15,color: Colors.black54, decoration: TextDecoration.lineThrough,),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [SizedBox(width: 7,),
                RichText(text:TextSpan(children: [
                  TextSpan(text: "EMI",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  TextSpan(text: " starts at ₹107. No Cost EMI available.",style: kk),
                ]
                ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [SizedBox(width: 7,),
                RichText(text:TextSpan(children: [
                  TextSpan(text: "EMI options",style: TextStyle(fontSize: 17,color: Colors.blue,),),
                ]
                ),
                ),
              ],
            ),









            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(children: [

                    TextSpan(text: "Inclusive of all taxes",style: TextStyle(fontSize: 17,color: Colors.black,),),



                  ])),
                )

              ],
            ),
            SizedBox(height: 0,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(
                      style:kk,
                      children: [
                        TextSpan(text: "Total:",style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "₹2,199",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                      ]
                  )),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: RichText(text:TextSpan(
                  style: kk,
                  children: [
                    TextSpan(text: "Free delivery",style:kl),
                    TextSpan(text: " Tomorrow, 22 September.",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),

                  ]
              )),
            ),

            Row(
              children: [       SizedBox(width: 13,),
                RichText(
                    text:TextSpan(
                        style: kl,
                        children: [
                          TextSpan(text: "Details",style: kl,),
                        ]
                    )),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [       SizedBox(width: 13,),
                RichText(
                    text:TextSpan(
                        style: kk,
                        children: [
                          TextSpan(text: "Order within  "),
                          TextSpan(text: "12 hrs 38 mins.",style: gr,),
                        ]
                    )),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [SizedBox(width: 11,),
                Icon(Icons.location_on_outlined,size:20,),
                RichText(
                    text:TextSpan(
                        style: kl,
                        children: [

                          TextSpan(text: "Deliver to Hari - Coimbatore 641027",style:TextStyle(fontWeight: FontWeight.bold)),
                        ]
                    )),
              ],
            ),

            // Row(
            //   children: [SizedBox(width: 10,),
            //     Container(
            //       decoration: BoxDecoration(
            //         color: Colors.grey,
            //       ),
            //       child: DropdownMenu<String>(
            //         initialSelection: list.first,
            //
            //         onSelected: (String? value) {
            //           setState(() {
            //             dropdownvalue = value!;
            //
            //           }
            //           );
            //         },
            //         dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
            //           return DropdownMenuEntry<String>(value: value, label: value);
            //         }
            //         ).toList(),
            //       ),
            //     ),
            //
            //   ],
            // ),

            SizedBox(height: 10,),
            SizedBox(height: 15,),
            Container(
              width: 370,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,color: Colors.grey,

                  )
                ],

              ),
              child: ElevatedButton(onPressed: () {}, child: Text("Add to Cart",style: TextStyle(color: Colors.black,fontSize: 17),),
                style: ElevatedButton.styleFrom(backgroundColor: yl),
              ),
            ),



            SizedBox(height: 10,),
            Container(
              width: 370,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,color: Colors.grey,

                  )
                ],

              ),
              child: ElevatedButton(onPressed: () {},
                child: Text("Buy now",style: TextStyle(color: Colors.black,fontSize: 17),),style:
                ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(5),backgroundColor: or),),
            ),

          ],
        ),
      ),
    );
  }
}