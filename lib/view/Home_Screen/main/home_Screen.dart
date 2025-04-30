
import 'package:easy_pasa_ui_project/view/Home_Screen/components/AppBar/AppBar.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/MoneyCards/money_card.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/RowContainer/row_containers.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/Schedule_Transaction/schedule_Transaction.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/StackContainer/Containerblock.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/scrollable_row/scrollable_row.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/slider_Above_Container/Slider_above_1_Container.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/slider_below_container/slider_below_1.dart';


import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appbar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Contaierblock(),
                  SizedBox(height: 5),
                  RowContainers(),
                  SizedBox(height: 15),
                  SliderAbove1Container(),
                  SizedBox(height: 12),
                  MoneyCard(),
                  SizedBox(height: 12),
                  SliderBelow1(),
                  SizedBox(height: 12),
                  ScrollableRow(),
                  SizedBox(height: 18),
                  ScheduleTransaction(),
                ],
              ),
            ),
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            unselectedItemColor: const Color.fromARGB(255, 126, 124, 124),
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                label: 'Cash Points',
                icon: Icon(Icons.location_on),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 3,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green, // Shadow color
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.qr_code_scanner_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Promotions',
                icon: Icon(Icons.military_tech_outlined),
              ),
              BottomNavigationBarItem(
                label: 'My Account',
                icon: Icon(Icons.person_3_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
