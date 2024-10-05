import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Setting extends StatelessWidget{
  const Setting({super.key});

  Future<void> _refreshData() async{
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // color:  Color(0xffC4DFCB),
      home: Scaffold(
        body: RefreshIndicator(
          onRefresh: _refreshData,
          child: ListView(
            padding: const EdgeInsets.all(7),
            children:   [
              Row(
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                    child: SizedBox(
                        height: 310,
                      width: 360,

                      child: Column(
                        children: [
                          // LinearProgressIndicator(color: Colors.deepOrange,),

                          SizedBox(height: 140, width: 355,
                            child: Image.asset('assets/images/coffee.png', fit: BoxFit.fitWidth,),
                          ),

                          const SizedBox(height: 140, width: 320,

                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 13)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Phasellus a Turpis id Nisi',style:TextStyle(color: Colors.black54,
                                        fontWeight: FontWeight.w500,fontSize: 20)
                                    )
                                ),
                                SizedBox(height: 5,),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('lorem ipsum dolor sit amet consectetur adipiscing elit Etiam efficitur insum in placerat molestie. Fusce quis mauris a enim sollicitudin',style:TextStyle(color: Colors.black54,
                                        fontWeight: FontWeight.w400,fontSize: 15)
                                    )
                                ),
                                SizedBox(height: 12,),
                                Align(
                                  alignment: Alignment.centerLeft,
                                      child: Text('SHARE     EXPLORE',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.pink),),
                                ),
                            
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  ),

                ],
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                    child: SizedBox(
                      height: 190,
                      width: 360,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: 360,
                            height: 142,
                            child: Image.asset('assets/images/img_2.png', fit: BoxFit.cover,),
                          ),
                          const Positioned(
                            bottom: 65, // Adjust this value to change the vertical position of the text
                            left: 10,  // Adjust this value to change the horizontal position of the text
                            child: Text('Aliquet Et Ante', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 23.5,),),
                          ),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 50,left: 250)),
                                 Icon(Icons.adb_rounded, color: Colors.lightBlue,),
                                  SizedBox(width: 10,),
                                 Icon(Icons.save, color: Colors.blue,),
                                 SizedBox(width: 10,),
                                 Icon(Icons.share, color: Colors.blue,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Row(
                children: [
                    Column(
                      children: [
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                          child: SizedBox(
                            height: 200,
                            width: 172,
                            child: Stack(
                                children: [
                                SizedBox(
                                  width: 180,
                                  height: 160,
                                  child: Image.asset('assets/images/img_3.png',fit: BoxFit.cover,),
                                ),
                                  const Positioned(
                                    bottom: 60,
                                    left: 10,
                                    child: Text('Aliquet Et Ante',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w400),),
                                  ),
                                  
                                  const Align(
                                    alignment: Alignment.bottomLeft,
                                      child: Row(
                                        children: [
                                          Padding(padding: EdgeInsets.only(left: 10,bottom: 40)),
                                         Icon(Icons.adb_rounded,color: Colors.blue,),SizedBox(width: 35,),
                                          Icon(Icons.save,color: Colors.blue,),SizedBox(width: 35,),
                                          Icon(Icons.share,color: Colors.blue,)
                                        ],
                                      )
                                  )
                                ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 5,),
                     Column(
                    children: [
                      Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                        child: SizedBox(
                          height: 200,
                          width: 172,
                          child: Stack(
                           children:  [
                            SizedBox(
                              height: 160,
                              width: 172,
                              child: Image.asset('assets/images/img_3.png',fit: BoxFit.cover,),
                            ),
                              const Positioned(
                                left: 10,
                                bottom: 60,
                                child: Text('Aliquet Et Ante',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w400),
                             ),
                            ),
                             const Align(alignment: Alignment.bottomLeft,
                             child: Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10,bottom: 40)),
                                 Icon(Icons.adb_rounded,color: Colors.lightBlue,),
                                 SizedBox(width: 40,),
                                 Icon(Icons.save,color: Colors.lightBlue,),
                                 SizedBox(width: 40,),
                                 Icon(Icons.share,color: Colors.lightBlue,),
                               ],
                             ),),
                           ]
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 7,),
              const Row(
                children: [
                Card(
                  elevation: 5,
                  shadowColor: Colors.black54,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                  color: Colors.blue,
                  child: SizedBox(
                    width: 360,
                    height: 130,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10,top: 80)),
                        SizedBox(
                          height: 120,
                          width: 300,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Phasellus a Turpis id Nisi',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white),),
                              ),
                              SizedBox(height: 5,),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Quisque imperdite nunc at amassa dictum volutpat Etiam id orci ipsum integer id ex dignissim',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),)),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('LISTEN NOW',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),),

                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                )
                ],
              ),
              SizedBox(height: 10,),
              const Row(
                children: [
                    Column(
                      children: [
                      Card(
                        color: Colors.greenAccent,
                        elevation: 5,
                        shadowColor: Colors.black,
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 172,
                              child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 7)),
                                   Text('Aliquet Et Ante \nMorbi',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400,color: Colors.white),),

                                  SizedBox(height: 10,),
                                  Divider(
                                    color: Colors.white,  // Divider line ka color
                                    thickness: 1,         // Divider line ki thickness
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'March 19, 17',
                                        style: TextStyle(
                                          color: Colors.white, // Date text ka color
                                        ),
                                      ),
                                      Icon(
                                        Icons.calendar_today,
                                        color: Colors.white,  // Icon ka color
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                      ],
                    ),
                    SizedBox(width: 6,),
                    Column(
                      children: [
                      Card(
                        color: Colors.deepOrangeAccent,
                        elevation: 5,
                        shadowColor: Colors.black,
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 172,
                              child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Call', style: TextStyle(color: Colors.white, // Date text ka color
                                        ),),
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,  // Icon ka color
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text('Vitae Tortor \nSed',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400,color: Colors.white)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}