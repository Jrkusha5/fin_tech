

import 'package:flutter/material.dart';

class TimeOptionButton extends StatelessWidget {
  const TimeOptionButton({super.key, required this.label,required this.isSelected,
  required this.onTap});

final String label;
final bool isSelected;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal:18, vertical: 6 ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? Colors.teal.withOpacity(0.06):Colors.transparent,

        ),
        child: Text(
          label,
          style:const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class TimeoptionRow extends StatefulWidget {
  const TimeoptionRow({super.key});

  @override
  State<TimeoptionRow> createState() => _TimeoptionRowState();
}

class _TimeoptionRowState extends State<TimeoptionRow> {
  String selectedPeriod='week';

  final List <String> periods=["Day", "Week","Month","Year"];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: periods.map((period){
        return TimeOptionButton(
          label: period, 
        isSelected: selectedPeriod==period,
         onTap:()=> setState(()=> 
           selectedPeriod=period,
         )
         );
      }).toList(),
    );
  }
}