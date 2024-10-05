import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class  Profile extends StatefulWidget {
   const Profile({super.key});

   @override
   _ProfileState createState() => _ProfileState();

}

class  _ProfileState  extends  State {

  bool _switchValue = false;
  String _mess = "Truned Off";

  void initState() {
    super.initState();
    _loadSwitchValue();
  }

  void _loadSwitchValue() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _switchValue = prefs.getBool('switchValue') ?? false;
      _mess = _switchValue ? "Turned ON" : "Turned Off";
    });
  }

  // Save switch value to SharedPreferences
  void _saveSwitchValue(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('switchValue', value);
  }


  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Color(0xffC4DFCB),
      body: ListView(
        children: [
          Column(
            children: [
             Row(
               children: [
                 SizedBox(
                   height: 400,
                   child: Stack(
                     children: [
                       Container(
                         width: sizes.width,
                         height: sizes.height * 0.3,
                         color: Colors.greenAccent,
                         child: Image.asset(
                           'assets/images/img_3.png',
                           fit: BoxFit.cover,
                         ),
                       ),
                       Positioned(
                         top: sizes.height * 0.1,
                         left: sizes.width * 0.10,
                         right: sizes.width * 0.10,
                         child: SizedBox(
                           width: sizes.width * 0.1,
                           height: sizes.height * 0.15,
                           child: Image.asset('assets/images/sun.png'),
                         ),
                       ),

                       Positioned(
                         top: sizes.height * 0.25,
                         left: sizes.width * 0.02,
                         right: sizes.width * 0.02,

                         child:  Card(
                           color: Colors.white,

                           child: SizedBox(
                             height: 200,
                             width: sizes.width * 1,
                             child:  const Flexible(
                               child: SingleChildScrollView(
                                 child: Padding(
                                   padding: EdgeInsets.all(10),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         'Facilities',
                                         style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 20,
                                           color: Colors.black54,
                                         ),
                                       ),
                                       SizedBox(height: 10),
                                       Row(
                                         children: [
                                           Icon(Icons.add_card_outlined),
                                           SizedBox(width: 10),
                                           Text('Food & Cafe'),
                                         ],
                                       ),
                                       SizedBox(height: 7),
                                       Row(
                                         children: [
                                           Icon(Icons.ac_unit_outlined),
                                           SizedBox(width: 10),
                                           Text('Fresh Air'),
                                         ],
                                       ),
                                       SizedBox(height: 7),
                                       Row(
                                         children: [
                                           Icon(Icons.park),
                                           SizedBox(width: 10),
                                           Text('Parking Area'),
                                         ],
                                       ),
                                       SizedBox(height: 7),
                                       Row(
                                         children: [
                                           Icon(Icons.car_crash_outlined),
                                           SizedBox(width: 10),
                                           Text('Cozy Canopy'),
                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20),

                      child: Card(
                        color: _switchValue ? Colors.black : Colors.white,
                        child: SizedBox(
                          height: sizes.height * 0.2,
                          // width: sizes.width * 0.5,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 0.0),
                                child:   Icon(Icons.ac_unit)
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 0.0),
                                child: Text(
                                    _switchValue ? 'ON' : 'OFF', style: TextStyle(color: Colors.deepOrange, fontSize: 20, fontWeight: FontWeight.w400,)
                                ),
                              ),
                              Switch(
                                value: _switchValue,
                                onChanged: (bool value) {
                                  setState(() {
                                    _switchValue = value;
                                    _mess = _switchValue ? "Turned ON" : "Turned Off";


                                  });
                                  _saveSwitchValue(value);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )


            ],),

        ],
      ),
    );

  }
}





