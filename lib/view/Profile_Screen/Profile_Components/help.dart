import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
              padding: const EdgeInsets.only(
                left: 20
                ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Help', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15
          ),
          child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(Icons.star_rate_rounded, color: Colors.green,),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Cutomer Support', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                  SizedBox(
                    width: 198,
                  ),
                  
                                 SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
            
              
                ],
           ) ),
        ),
        SizedBox(
          height: 20,
        ),


        Padding(
          padding: const EdgeInsets.only(
            left: 15
          ),
          child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(Icons.help_outline, color: Colors.green,),
                  SizedBox(
                    width: 12,
                  ),
                  Text('help & FAQs', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 70, 67, 67)),),
                  SizedBox(
                    width: 239,
                  ),
                  
                                 SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
            
              
                ],
           ) ),
        ),
        
      ],
    );
  }
}