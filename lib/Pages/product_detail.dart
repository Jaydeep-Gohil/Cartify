import 'package:cartify/widget/support_widget.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[ GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.arrow_back_ios_new_outlined)),
              ),
                Center(child: Image.asset("images/headphone2.png",height: 400,)),
              ],),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Headphone",style: AppWidget.boldTextFeildStyle(),),
                        Text("\$300",style: TextStyle(
                            color: Color(0xFFfd6f3e),
                            fontSize: 23,
                            fontWeight: FontWeight.bold)),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Details",style: AppWidget.semiBoldTextFeildStyle(),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("The Product is Very good.It have a 1 year waranty, These headphones are too good like you can also listen a person who is speaking slowly. But aware of shivam he specks very loudly."),
                    SizedBox(height: 190,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFfd6f3e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text("Buy Now",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
