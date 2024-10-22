import 'package:fintech/widgets/top_up_sheet.dart';
import 'package:flutter/material.dart';
//import 'package:modal_bottom_sheet/modal_button_sheet.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});


  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {

  String selectedProvider="Bank of Commercial";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton.outlined(onPressed: ()=>Navigator.pop(context),
         icon:const Icon(Icons.arrow_back_ios_new)),
         title:const Text("Top Up"),
      ),
    
      body:SingleChildScrollView(
        padding:const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  Text("Bank Transfer",
            style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold
            ),
            ),
           const SizedBox(height: 15,),

            PaymentProvider(image: "assets/bank_of_america.jpg", 
            name: "Bank of Commercial",
             account: "**** *** **** 1990", 
             isSelected: selectedProvider == "Bank of Commercial",
              onChanged: (value){
                if(value==true){
                  setState(() {
                    selectedProvider= 'Bank of Commercial';
                  });
                }
              }),

               PaymentProvider(image: "assets/us_bank.png", 
            name: "Bank of Dashen",
             account: "**** *** **** 1990", 
             isSelected: selectedProvider == "Bank of Dashen",
              onChanged: (value){
                if(value==true){
                  setState(() {
                    selectedProvider= 'Bank of Dashen';
                  });
                }
              }),

            const Text("others",
            style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold
            ),
            ),
             PaymentProvider(image: "assets/paypal.jpg", 
            name: "Chapa",
             account: "Easy payment", 
             isSelected: selectedProvider == "paypal",
              onChanged: (value){
                if(value==true){
                  setState(() {
                    selectedProvider= 'paypal';
                  });
                }
              }),
               PaymentProvider(image: "assets/apple.png", 
            name: "SantimPay",
             account: "Easy payment", 
             isSelected: selectedProvider == "SantimPay",
              onChanged: (value){
                if(value==true){
                  setState(() {
                    selectedProvider= 'SantimPay';
                  });
                }
              }),
               PaymentProvider(image: "assets/google.png", 
            name: "ArifPay",
             account: "Easy payment", 
             isSelected: selectedProvider == "ArifPay",
              onChanged: (value){
                if(value==true){
                  setState(() {
                    selectedProvider= 'ArifPay';
                  });
                }
              }),

          ElevatedButton(onPressed: (){

              showModalBottomSheet(context: context,
              shape:const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20)
                )
              ),
               builder: (context)=> TopUpButtonSheet(
                selectedProvider: selectedProvider,
                image:getImageForProvider(selectedProvider),
                account:getAccountForProvider(selectedProvider)
               ),);
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor:  Colors.black,
              foregroundColor: Colors.white,
              fixedSize:const Size(double.maxFinite,60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )
            ),
            child:const Text("Confirm",
            style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold),),
            )


          ],
        ),
      ),
    );
  }
}

String getAccountForProvider(String provider){
  switch(provider){
    case "Bank of Commercial":
    return '**** *** **** 1990';
    case "Bank of Dashen":
    return '**** *** **** 1990';
    default:
    return'Easy Paymnet';
  }
}

String getImageForProvider(String provider){
 switch(provider){
    case "Bank of Commercial":
     return 'assets/us_bank.png';
    case "Bank of Dashen":
     return 'assets/us_bank.png';
    case "chapa":
    return 'assets/paypal.jpg';
    case "santimpay":
    return 'assets/apple.png';
    case "arifpay":
    return 'assets/google.png';

    default:
    return'Easy Paymnet';
  }

}


class PaymentProvider extends StatelessWidget {
  const PaymentProvider({super.key, required this.image, required this.name
  ,required this.account, required this.isSelected,required this.onChanged});
final String image;
final String name;
final String account;
final bool isSelected;
final ValueChanged<bool?> onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.white,
          ),
            title: Text(name),
            subtitle: Text(account),
            trailing: Transform.scale(
              scale: 1.5,
              child: Radio.adaptive(value: true, 
              groupValue:isSelected, 
              onChanged: onChanged,
               activeColor:const Color.fromARGB(255, 16, 80, 90),),

             
            ),
          contentPadding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: Colors.black12,
            )
          ),
        ),
       const SizedBox(height: 20,)
      ],
    );
  }
}