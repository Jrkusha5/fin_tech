
import 'package:fintech/widgets/time_option_button.dart';
import 'package:flutter/material.dart';
//import 'package:fintech/pages/scan.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 252, 249),
        leading: IconButton.outlined(
          onPressed: (){},
         icon: const Icon(Icons.arrow_back_ios_new)
         ),
         title:const Center(
           child:  Text("Activity",
           style: TextStyle(
            fontWeight: FontWeight.w300,
           ),),
         ),
         actions: [
              IconButton.outlined(onPressed: (){},
               icon:const Icon(Icons.more_horiz,))
         ],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: List.generate(3,
                   (index)=>Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      width: 340,
                      height: 75,
                      decoration: BoxDecoration(
                        color:(index%2==0)? const Color.fromARGB(255, 14, 80, 90):const Color.fromARGB(255, 7, 42, 51),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding:const  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                           const Text("SmartPay Cards",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),),
                           const Spacer(),
                          const  Text("****1990",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                             CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white.withOpacity(0.8),
                                                      ),
                                                      Transform.translate(
                              offset:const  Offset(-10, 0),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white.withOpacity(0.8),
                              ),
                                                      )
                                                    ],
                                                  ),
                            ),
                          ],
                        ),
                      ),
                     ),
                   )),
                )
              ),
             const SizedBox(height: 25,),
             Container(
              padding:const EdgeInsets.all(12),
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(color:Colors.grey[300]!),
                borderRadius: BorderRadius.circular(17),
              ),
              child:const Column(
                children: [
                  Text("Total Spending",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,

                  ),),
                  SizedBox(height: 4,),
                   Text("6,345.00 ETB",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                   

                  ),),
                  SizedBox(height: 12,),
                  TimeoptionRow(),
                  SizedBox(height: 16,),
                  // Expanded(child: LineChart(
                  //   LineChartData(
                  //     gridData:FlGridData(show:false),
                  //     titlesData:FlTitleData(
                  //       leftTitles:AxisTitles(
                  //         sideTitles:SideTitles(showTitles:false),
                  //         bottomTitles:AxisTitles(sideTitles:SideTitles(
                  //           showTitles:true,
                  //           getTitlesWidget:(value,meta){
                  //             const titles=['s', 'm','t','w','t','f'];
                  //             final index= value.toint();
                  //             if(index>=0 && index < titles.length){
                  //               return Text(
                  //                 titles(index),
                  //                 style: const TextStyle(color: Colors.grey),
                  //               );
                  //             }
                  //             return const Text("");
                  //           },
                  //           reservedSize:22,
                  //           interval:1
                  //         ))
                  //         rightTitles:AxisTitles(
                  //           sideTitles:SsideTitles(showTitles:false),
                  //         ),
                  //          topTitles:AxisTitles(
                  //           sideTitles:SsideTitles(showTitles:false),
                  //         ),

                  //       ),
                  //       borderData:FlBorderData(show:false),
                  //       lineBarsData:[
                  //         LineChartBarData(
                  //           spots:[
                  //             const FlSpot(0,2),
                  //             const FlSpot(1,2),
                  //             const FlSpot(2,4),
                  //             const FlSpot(4,3),
                  //             const FlSpot(5,4),
                  //             const FlSpot(6,6),
                  //           ],
                  //           isCurved:true,
                  //           color:Colors.teal,
                  //           barWidth:3,
                  //           dotData:const FlDotData(show:false),
                  //           belowBarData:BarAreaData(
                  //             show:true,
                  //             color:Colors.real.withOpacity(0.07),
                  //           )
                  //         )
                  //       ],
                  //     ),
                  //   )
                  // ))
                ],
              ),
             ),
            const SizedBox(height: 25,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Transaction",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),),
                Row(
                  children: [
                    Text("All",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.teal,
                )

                  ],
                )
              ],
            ),Column(
              children: List.generate(3,
               (index)=>const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 239, 243, 245),
                  child: Icon(Icons.payment_rounded,
                   color:Colors.teal,),
                 
                ),
                title: Text("Smartpay ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                subtitle: Text("withdraw"),
                trailing: Text("-400.00 ETB",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),),
               )),
            )
            ],
          ),
        ),
      )
    );
  }
}