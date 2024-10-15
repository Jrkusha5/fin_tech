
import 'package:fintech/widgets/action_button.dart';
import 'package:fintech/widgets/credit_card.dart';
import 'package:fintech/widgets/transaction_list.dart';
import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255,16,80,90),

      body:SafeArea(
        bottom:false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:const EdgeInsets.all(16.0),
              child: Row(children: [
               const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('WELCOME BACK',
                  style:TextStyle(
                    color: Colors.white,
                  )
                  ),
                  Text('Tesloach Ker',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  )
                  ),
                ],
                ),
             const Spacer(),//it will push to the end the icon
               IconButton.outlined(
                onPressed: () {}, 
               icon:const Icon
               (Icons.notifications,
               color: Colors.white,)
               )
              ],),
            ),
           Expanded(child: Stack(
            children: [
              Container(
                margin:const EdgeInsets.only(top: 167) ,
                color: Colors.white,
                child: const Column(
                  children: [
                    SizedBox(height: 110),
                    ActionButtons(),
                   SizedBox(height: 20,),
                    TransactionList()
                   
                  ],
                ),
              ),
             const Positioned(
                top: 20,left: 25,right: 25,
                child: CreditCard()
                )
            ],
           ))
          ],
        ),
      ),

    bottomNavigationBar:BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon: 
          const Column(
            children: [
              Icon(Icons.home),
              Text("Home",
              style: TextStyle(fontSize: 10),)
            ],
          )
          ),
           IconButton(onPressed: (){}, icon: 
          const Column(
            children: [
              Icon(Icons.credit_card),
              Text("My card",
              style: TextStyle(fontSize: 10),)
            ],
          )
          ),
           FloatingActionButton(onPressed: (){},
           backgroundColor: Color.fromARGB(255, 16, 80, 90),
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
           ),
           child:const Icon(Icons.qr_code_scanner, color: Colors.white,),

           ),
            IconButton(onPressed: (){}, icon: 
          const Column(
            children: [
              Icon(Icons.bar_chart),
              Text("Activity",
              style: TextStyle(fontSize: 10),)
            ],
          )
          ),
           IconButton(onPressed: (){}, icon: 
          const Column(
            children: [
              Icon(Icons.person),
              Text("Profile",
              style: TextStyle(fontSize: 10),)
            ],
          )
          ),
        ],
      ),
    ) ,

    );
  }
}