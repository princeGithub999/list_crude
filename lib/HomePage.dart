import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'Profile.dart';
import 'Search.dart';
import 'Setting.dart';

void main() {
  runApp(const Homepage());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home:  const MyHomePage(),
    );

  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() =>  _MyHomePageState();

}

class _MyHomePageState extends  State<MyHomePage> {
  int pageIndex = 0;
  bool isAnyItemSelected = false;

  final pages = [
    const Homepage(),
    const Setting(),
    const Profile(),
    Search(),
  ];


  // void updateSelectionState(bool isSelected) {
  //   setState(() {
  //     isAnyItemSelected = isSelected;
  //   });
  // }


  // App bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],


      appBar: AppBar(

        title: const Text("My Application", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlue,
      ),

      bottomNavigationBar: buildMyNavBar(context),

      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abhishekm977@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text("A", style: TextStyle(fontSize: 30.0, color: Colors.lightBlue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Clcik MyProfile'),));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Click My Cours'),));
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Clcik Go premium'),));
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Click Saved Video')));
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Clcik Edit Profile')));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Clcik LogOut')));
              },
            ),
          ],
        ),
      ), //Drawer
    );
  }


  buildMyNavBar(BuildContext context) {
    return Container(
      height: 63,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: Column(

              children: [
                pageIndex == 0
                    ? const Icon(
                  Icons.home_filled,
                  color: Colors.white,
                  size: 30,
                )
                    : const Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: pageIndex == 0 ? Colors.white : Colors.grey,
                      fontSize: 12
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: Column(
                children: [
                  pageIndex == 1 ? const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30,
                  )
                      : const Icon(
                    Icons.settings, // Default icon when condition is false
                    color: Colors.grey,
                    size: 30,
                  ),
                  Text('Setting',
                      style: TextStyle(
                        color: pageIndex == 1 ? Colors.white : Colors.grey,
                        fontSize: 12
                        ,)
                  )
                ],
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: Column(
                  children: [
                    pageIndex == 2
                        ?const Icon(
                      Icons.supervised_user_circle_rounded,
                      color: Colors.white,
                      size: 30,
                    ):
                    const Icon(
                      Icons.supervised_user_circle_rounded,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Text('Profile',
                        style: TextStyle(
                            color: pageIndex == 2 ? Colors.white : Colors.grey,
                            fontSize: 12
                        )
                    )
                  ]
              )

          ),
          IconButton(
              enableFeedback: false,
              onPressed: (){
                setState(() {
                  pageIndex=3;
                });
              },
              icon:Column(
                children: [
                  pageIndex == 3
                      ?const Icon(
                    Icons.manage_search_sharp,
                    color: Colors.white,
                    size: 30,
                  ):const Icon(
                    Icons.manage_search_sharp, // Default icon when condition is false
                    color: Colors.grey,
                    size: 30,
                  ),
                  Text('Search',style:TextStyle(
                      color: pageIndex == 3 ? Colors.white : Colors.grey,
                      fontSize: 12)
                    ,)
                ],
              )
          ),
        ],
      ),
    );
  }
}



class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  Future<void> _refreshData() async {
    await Future.delayed(const Duration(seconds: 2));

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: RefreshIndicator(
          onRefresh: _refreshData,
          color: Colors.white,
          backgroundColor: Colors.blue,
          displacement: 40.0,
          edgeOffset: 10.0,
          strokeWidth: 3.0,

          child: ListView(
            padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0,),
            children: [
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    'New Releases',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 235,
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Padding(padding: const EdgeInsets.only(top: 10)),
                  Container(
                    height: 230, // Card ki desired height
                    width: 190, // Card ki desired width
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      elevation: 5,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150,
                            width: 190,
                            child: Image.asset('assets/images/img.png', fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                // Image from network
                                Row(
                                  children: [
                                    const Text(
                                      'Mauris sagitti..',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),

                                    SizedBox(width: 10), // Thoda gap dene ke liye
                                    Image.asset(
                                      'assets/images/dots.png', // yahan apni image ka URL den
                                      width: 16, // image ki width specify karen
                                      height: 20, // image ki height specify karen
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text('Data',style: TextStyle(color: Colors.black45,
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                )
                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 230, // Card ki desired height
                    width: 185,
                    //
                    // padding: EdgeInsets.only(top: 10.0),// Card ki desired width
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      elevation: 5,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 174,
                            child: Image.asset(
                              'assets/images/img_1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                // Image from network
                                Row(
                                  children: [
                                    const Text(
                                      'Aliquam',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(width: 60), // Thoda gap dene ke liye
                                    Image.asset(
                                      'assets/images/dots.png', // yahan apni image ka URL den
                                      width: 16, // image ki width specify karen
                                      height: 20, // image ki height specify karen
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Hello',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black45))
                                  ],
                                ),
                              ],
                            ),

                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 225),
                  Text('MORE',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,)
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(2)),
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 124.5,
                        child:  Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 124.5,
                                child: Image.asset('assets/images/img_2.png', fit: BoxFit.cover,),
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                              const Text('Curabitu..',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // SizedBox(width: 10,),

                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 124.5,
                        child:  Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 124.5,
                                child: Image.asset('assets/images/img_1.png', fit: BoxFit.cover,),
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Text('Quisque..',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 124.5,
                        child:  Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 124.5,
                                child: Image.asset('assets/images/tiger.png', fit: BoxFit.cover,),
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Text('Allquam..',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,),)

                            ],
                          ),
                        ),
                      )
                    ],

                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Row(
                children: [],
              )
            ],
          ),
        ),
        // bottomNavigationBar: buildMyNavBar(context),

      ),
    );
  }

  // buildMyNavBar(BuildContext context) {}

}


