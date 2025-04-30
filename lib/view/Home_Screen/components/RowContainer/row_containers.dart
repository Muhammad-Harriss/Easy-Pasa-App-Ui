import 'package:flutter/material.dart';

class RowContainers extends StatefulWidget {
  const RowContainers({super.key});

  @override
  State<RowContainers> createState() => _RowContainersState();
}

class _RowContainersState extends State<RowContainers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 23
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          //Send Money Card
          Card(
            elevation: 1,
            child: Container(
            height: 90,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  Icon(
                    Icons.keyboard_double_arrow_right_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Send Money', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
              
                ],
              ),
            ),
                      )),
            Card(
            elevation: 1,
            child: Container(
            height: 90,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  Icon(
                    Icons.payment_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Bill Payment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
              
                ],
              ),
            ),
                      )),
            // mobile packages 
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
                right: 23,
              ),
              child: Card(
              elevation: 1,
              child: Container(
              height: 90,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              
                    Icon(
                      Icons.install_mobile_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Mobile', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Packages', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                
                  ],
                ),
              ),
                        )),
            )
        ],
      ),
    );
  }
}