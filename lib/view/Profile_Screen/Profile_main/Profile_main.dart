import 'package:easy_pasa_ui_project/view/Profile_Screen/Profile_Components/My_account.dart';
import 'package:easy_pasa_ui_project/view/Profile_Screen/Profile_Components/green_container.dart';
import 'package:easy_pasa_ui_project/view/Profile_Screen/Profile_Components/help.dart';
import 'package:easy_pasa_ui_project/view/Profile_Screen/Profile_Components/list.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatefulWidget {
  const ProfileMain({super.key});

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Disable the default leading (back) button
        backgroundColor: Colors.transparent, // You can choose any color or use transparent for custom styles
        elevation: 0,  // Removes shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Left arrow icon
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            MyAccount(),
            GreenContainer(),
            SizedBox(
              height: 5,
            ),
            Listt(),
            SizedBox(
              height: 25            ),
            Help()
        
            
        
          ],
        ),
      ),
    );
  }
}