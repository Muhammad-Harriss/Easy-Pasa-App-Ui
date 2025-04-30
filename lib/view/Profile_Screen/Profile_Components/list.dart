import 'package:flutter/material.dart';

class Listt extends StatefulWidget {
  const Listt({super.key});

  @override
  State<Listt> createState() => _ListtState();
}

class _ListtState extends State<Listt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16
      ),
      child: Column(
        children: [
          //Upgrade Account

          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(Icons.upgrade_sharp, color: Colors.green,),
                SizedBox(
                  width: 12,
                ),
                Text('Upgrade Account', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                SizedBox(
                  width: 140,
                ),
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.yellow
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                      bottom: 4
                    ),
                    child: Text('NEW', style: TextStyle(color: const Color.fromARGB(255, 75, 66, 66), fontWeight: FontWeight.bold),),
                  ),
                  
          
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
          
            
              ],
            ),
          ),

          SizedBox(height: 25,),

          // Account Level
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(Icons.line_style, color: Colors.green,),
                SizedBox(
                  width: 12,
                ),
                Text('Account level', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                SizedBox(
                  width: 232,
                ),
                
                               SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
          
            
              ],
            ),
          ),
          SizedBox(height: 25,),

          // Transaction History
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(Icons.history, color: Colors.green,),
                SizedBox(
                  width: 12,
                ),
                Text('Transaction History', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                SizedBox(
                  width: 182,
                ),
                
                               SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
          
            
              ],
            ),
          ),
          SizedBox(height: 25,),

          // Open New Gen Account
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(Icons.account_box_outlined, color: Colors.green,),
                SizedBox(
                  width: 12,
                ),
                Text('Open a NewGen Account', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                SizedBox(
                  width: 138,
                ),
                
                               SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
          
            
              ],
            ),
          ),
          SizedBox(height: 25,),

          //MY Account
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(Icons.account_balance_wallet_rounded, color: Colors.green,),
                SizedBox(
                  width: 12,
                ),
                Text('My Account', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                SizedBox(
                  width: 244,
                ),
                
                               SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
          
            
              ],
            ),
          ),
          SizedBox(height: 25,),

          //Goals & Rewards
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(Icons.card_giftcard_outlined, color: Colors.green,),
                SizedBox(
                  width: 12,
                ),
                Text('Goals & Rewards', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                SizedBox(
                  width: 205,
                ),
                
                               SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
          
            
              ],
            ),
          ),
          SizedBox(height: 25,),

          //My Favourite
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(Icons.star_rate_rounded, color: Colors.green,),
                SizedBox(
                  width: 12,
                ),
                Text('My Favourite', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                SizedBox(
                  width: 233,
                ),
                
                               SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
          
            
              ],
            ),
          ),
          SizedBox(height: 25,),

          //Security Preference
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(Icons.security, color: Colors.green,),
                SizedBox(
                  width: 12,
                ),
                Text('Security Preferences', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                SizedBox(
                  width: 113,
                ),
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.yellow
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                      bottom: 4
                    ),
                    child: Text('NEW', style: TextStyle(color: const Color.fromARGB(255, 75, 66, 66), fontWeight: FontWeight.bold),),
                  ),
                  
          
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
          
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}