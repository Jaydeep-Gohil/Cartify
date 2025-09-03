import 'package:cartify/Pages/pofile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Order.dart';
import 'home.dart';
class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  late List<Widget> pages;
  late Home HomePages;
  late Order order;
  late Profile profile;
  int currentTableIndex=0;


  @override
  @override
  void initState() {
    HomePages=Home();
    order=Order();
    profile=Profile();
    pages=[HomePages,order,profile];
    super.initState();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar
        (height: 65,
          backgroundColor: Color(0xfff2f2f2),
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
            setState(() {
              currentTableIndex=index;
            });
          },
          items: [
        Icon(Icons.home_outlined,color: Colors.white,),
        Icon(Icons.shopping_bag_outlined,color: Colors.white,),
        Icon(Icons.person_outlined,color: Colors.white,)
      ]),
      body: pages[currentTableIndex],

    );
  }
}
