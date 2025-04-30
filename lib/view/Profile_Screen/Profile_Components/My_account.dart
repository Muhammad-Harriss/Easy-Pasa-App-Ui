import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row N0 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20
                ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('My Account', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 12,
              ),
              child: Container(
                height: 25,
                width: 90,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 223, 223),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                     width: 50,
                     decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100)

                     ),
                     child: Center(child: Text('Eng', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),)),

                    ),
                    Container(
                     height: 25,
                     width: 30,
                     decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(100)

                     ),
                     child: Center(child: Text('اردو', style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),)),

                    ),
                  ],
                  
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 5,
        ),

        // Row No 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text('Profile, Setting & More', style: TextStyle(fontSize: 14, color: Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 14
              ),
              child: Text("Version V.2.9.84", style: TextStyle(fontSize: 12, color: Colors.grey),),
            )
          ],
        )
      ],
    );
  }
}