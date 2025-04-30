import 'package:flutter/material.dart';

class MoneyCard extends StatefulWidget {
  const MoneyCard({super.key});

  @override
  State<MoneyCard> createState() => _MoneyCardState();
}

class _MoneyCardState extends State<MoneyCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 18
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Get your easypaisa Debit Card",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          // Online Card

          Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 65, 136, 67),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 10
                        ),
                        child: Text('Online Card', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 10
                        ),
                        child: Text('Only for Online \nPayment in Pakistan', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.yellow[400]),),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 25,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color.fromARGB(255, 95, 214, 99)
                            
                            
                          ),
                          
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 3,
                            
                            

                          ),
                          child: Row(
                            children: [
                              Text('Manage card', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),),
                              SizedBox(
                                width: 3,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Colors.white,
                                  ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    


                  ],
                ),
              ),
            ),
          ),
        ),

        //Plastic Card
        Padding(
          padding: const EdgeInsets.only(
            right: 15
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 5,
                
              ),
              child: Card(
                elevation: 2,
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 1, 2, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 10
                          ),
                          child: Text('Plastic Card', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(
                           
                        ),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image(image: AssetImage('assets/pngs/sim.png'))),
                      )
                       
          
                        ],
          
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 10
                          ),
                          child: Text('Use at any ATM or Shop \nin Pakistan', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.yellow[400]),),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
          
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 25,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color.fromARGB(255, 95, 214, 99)
                              
                              
                            ),
                            
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 3,
                              
                              
          
                            ),
                            child: Row(
                              children: [
                                Text('Manage card', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),),
                                SizedBox(
                                  width: 3,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Icon(
                                    Icons.arrow_forward_sharp,
                                    color: Colors.white,
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      
          
          
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
        ],)


      ],
    );
  }
}