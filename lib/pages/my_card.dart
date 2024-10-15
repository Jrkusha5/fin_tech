import 'package:fintech/widgets/credit_card.dart';
import 'package:flutter/material.dart';

class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(onPressed: (){}, 
        icon:const Icon(
          Icons.arrow_back_ios_new,
          size: 20,
        ),
        ),
        title:const Text("My Card",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body:const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            BackCard(),
            SizedBox(height: 25,),
            CreditCard()
          ],
        ),),
      )
    );
  }
}
class BackCard extends StatelessWidget {
  const BackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}