import 'package:flutter/material.dart';
class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 235, 231),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/headphone.PNG"),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Explore\nThe Best\nProducts",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                  child: Text("Next",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
