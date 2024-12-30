

import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView(
       children: [
       const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today, Dec 29"),
                Row(
                  children: [
                    Text("All transaction"),
                  ],
                )
              ],

            ),
          ),
                 Divider(color: Colors.grey[200],),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                child: Icon(
                  Icons.attach_money,
                  color: Colors.purpleAccent,
                ),
              ),
              title: Text("Tax"),
              subtitle: Text("payment"),
              trailing: Text("-400.00 ETB",
              style: TextStyle(color:Colors.red),
              ),

            ),
             Divider(color: Colors.grey[200],),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                child: Icon(
                  Icons.account_balance,
                  color: Colors.teal,
                ),
              ),
              title: Text("Bank of Abssinya"),
              subtitle: Text("Deposit"),
              trailing: Text("+1546.00 ETB",
              style: TextStyle(color:Colors.green),
              ),

            ),
            Divider(color: Colors.grey[200],),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                child: Icon(
                  Icons.restaurant,
                  color: Colors.teal,
                ),
              ),
              title: Text("Restaurant"),
              subtitle: Text("payment"),
              trailing: Text("-2000.00 ETB",
              style: TextStyle(color:Colors.red),
              ),

            ),
            Divider(color: Colors.grey[200],),
           const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                child: Icon(
                  Icons.send,
                  color: Colors.orangeAccent,
                ),
              ),
              title: Text("For Donation"),
              subtitle: Text("Sent"),
              trailing: Text("-680.00 ETB",
              style: TextStyle(color:Colors.red),
              ),

            )
       ],
    )
    );
  }
}