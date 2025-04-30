import 'package:flutter/material.dart';

class ScheduleTransaction extends StatefulWidget {
  const ScheduleTransaction({super.key});

  @override
  State<ScheduleTransaction> createState() => _ScheduleTransactionState();
}

class _ScheduleTransactionState extends State<ScheduleTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Schedule Your Transactions",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        // container 1
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 120,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
              

                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/pngs/clander.png'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Set payments in advance',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Now setup Mobile packages and EasyLoad\nin advance',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 25,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white // Green background
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Schedule Payment',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.green,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 120,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
              

                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/pngs/headphone.png'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Set payments in advance',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Register a complain or get quick help or queries\nrelated to easypaisa',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 25,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white // Green background
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Help',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.green,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
