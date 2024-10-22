import 'package:flutter/material.dart';

class TopUpButtonSheet extends StatefulWidget {
  const TopUpButtonSheet({super.key,required this.selectedProvider,
  required this.account, required this.image});

  final String selectedProvider;
  final String account;
  final String image;

  @override
  State<TopUpButtonSheet> createState() => _TopUpButtonSheetState();
}

class _TopUpButtonSheetState extends State<TopUpButtonSheet> {
  double amount=100;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 0.7,
      padding:const  EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(widget.image),
            backgroundColor: Colors.white,
          ),
            title: Text(widget.selectedProvider),
            subtitle: Text(widget.account),
            trailing: const Icon(Icons.keyboard_arrow_down,size: 25,
            color: Colors.grey,),
           
          contentPadding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: Colors.black12,
            )
          ),
        ),

       const SizedBox(height: 20,),
       const Text("Amount",
        style: TextStyle(fontSize: 16, 
        fontWeight: FontWeight.bold),),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              setState(() {
                amount -=5;
              });
            },
             icon:const Icon(Icons.remove),
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
             ),),
              Text("\$ ${amount.toStringAsFixed(0)}",
             style:const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
             ),),
              IconButton(onPressed: (){
                 setState(() {
                   amount +=5;
                 });
              },
             icon:const Icon(Icons.add),
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
             ),),
          ],
        ),
        const SizedBox(height: 20,),
        Slider(value: amount,
        min: 5,
        max: 5000,
        activeColor:const Color.fromARGB(255, 16, 82, 90),
         onChanged: (value){
          setState(() {
            amount=value;
          });
        }),
        const SizedBox(height: 20,),
        Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [5,10,15,20,25,100,200].map((value){
              return InkWell(
                onTap: (){
                  setState(() {
                    amount=value.toDouble();
                  });
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 70,
                  height: 70,
                  alignment:Alignment.center,
                  decoration: BoxDecoration(
                    color: amount == value ?const Color.fromARGB(255, 16, 80, 90): Colors.grey,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Text('\$$value', style: TextStyle(
                    color: amount== value ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 20,),
         ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor:  Colors.black,
              foregroundColor: Colors.white,
              fixedSize:const Size(double.maxFinite,60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )
            ),
            child:const Text("Top Up",
            style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold),),
            )
        ],
      ),
    );
  }
}