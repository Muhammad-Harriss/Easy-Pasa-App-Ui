import 'package:flutter/material.dart';

class Contaierblock extends StatefulWidget {
  const Contaierblock({super.key});

  @override
  State<Contaierblock> createState() => _ContaierblockState();
}

class _ContaierblockState extends State<Contaierblock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          
        ],
      ),
      child: Stack(
        children: [
          
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            
            child: Container(
              height: 80, 
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                  Color(0xFFACE8BC),
                  
                  Color.fromARGB(255, 176, 231, 191),
                  
                  Color.fromARGB(255, 188, 230, 198),
                  Colors.white
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white, 
                    blurRadius: 200, 
                    spreadRadius: -50, 
                    offset: Offset(0, -25), 
                  ),
                ],
              ),
            ),
          ),
          
          // Middle Container
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Container(
                height: 160,
                width: 480,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 96, 151, 100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // Icon and Title Container
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 25,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 72, 126, 76),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.wallet_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  'easypaisa Account',
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    // Name Text
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'MUHAMMAD HARIS SARFRAZ',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),

                    // Number Text
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '03169656382',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 1),

                    // Sign In Text and Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Sign in to your easypaisa account',
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 25,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
