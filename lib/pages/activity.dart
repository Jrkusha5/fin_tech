
import 'package:fintech/widgets/time_option_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
         title: Center(
           child:  Text("Activity",
           style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w300),),
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
                            Text("SmartPay Cards",
                            style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white),),
                           const Spacer(),
                           Text("****1990",
                          style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white),),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                               CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white.withOpacity(0.8), ),
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
              child: Column(
                children: [
                  Text("Total Spending",
            style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black),),

                const  SizedBox(height: 4,),
                   Text("6,345.00 ETB",
               style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),

                const  SizedBox(height: 12,),
                const  TimeoptionRow(),
                const  SizedBox(height: 16,),

                 
                  Expanded(child: LineChart(
                    LineChartData(
                      gridData:const FlGridData(show:false),
                      titlesData:FlTitlesData(
                        leftTitles:const AxisTitles(
                          sideTitles: SideTitles(showTitles:false),
                          ),
                          bottomTitles:AxisTitles(sideTitles:SideTitles(
                            showTitles:true,
                            getTitlesWidget:(value,meta){
                              const titles=['S', 'M','T','W','T','F'];
                              final index= value.toInt();
                              if(index>=0 && index < titles.length){
                                return Text( 
                                  titles[index],
                                  style: const TextStyle(color: Colors.black),
                                );
                              }
                              return const Text("");
                            },
                            reservedSize:22,
                            interval:1
                          ),
                          ),
                          rightTitles:const AxisTitles(
                            sideTitles:SideTitles(showTitles:false),
                          ),
                           topTitles: const AxisTitles(
                            sideTitles:SideTitles(showTitles:false),
                           ),
                      ),
                        borderData:FlBorderData(show:false),
                        lineBarsData:[
                          LineChartBarData(
                            spots:[
                              const FlSpot(0,2),
                              const FlSpot(1,1),
                              const FlSpot(2,4),
                              const FlSpot(4,3),
                              const FlSpot(5,4),
                              const FlSpot(6,6),
                            ],
                            isCurved:true,
                            color:Colors.teal,
                            barWidth:3,
                            dotData:const FlDotData(show:false),
                            belowBarData:BarAreaData(
                              show:true,
                              color:Colors.teal.withOpacity(0.07),
                            )
                          )
                        ],
                     
                    )
                  ))
                ],
              ),
             ),
            const SizedBox(height: 25,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Transaction",   
              style: GoogleFonts.lato(fontSize: 19, fontWeight: FontWeight.bold),

                ),
                Row(
                  children: [
                    Text("All",
                style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),
                ),
               const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.teal,
                )

                  ],
                )
              ],
            ),Column(
              children: List.generate(3,
               (index)=> ListTile(
                leading:const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 239, 243, 245),
                  child: Icon(Icons.account_balance_wallet,
                   color:Colors.teal,),
                 
                ),
                title: Text("Smartpay ",
                
                style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("withdraw"),
                trailing: Text("-400.00 ETB",
                
                style: GoogleFonts.lato(fontSize: 17, fontWeight: FontWeight.bold),
                ),
               )),
            )
            ],
          ),
        ),
      )
    );
  }
}