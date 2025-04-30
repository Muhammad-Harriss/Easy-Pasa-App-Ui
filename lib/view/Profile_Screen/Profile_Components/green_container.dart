import 'package:flutter/material.dart';

class GreenContainer extends StatefulWidget {
  const GreenContainer({super.key});

  @override
  State<GreenContainer> createState() => _GreenContainerState();
}

class _GreenContainerState extends State<GreenContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 70, 114, 73),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // Profile Image
              Transform.translate(
                offset: Offset(0, -10),
                child: ClipOval(
                  child: Image.asset(
                    'assets/pngs/profile.jpeg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),

              // Name and Contact Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'MUHAMMAD\nHARIS\nSARFRAZ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "0316789654467\nex.harry.x1@gmail.com",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 226, 226),
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Transform.translate(
                offset: Offset(0, -40),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 1.5
                      ),
                      color: const Color.fromARGB(255, 224, 224, 224),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 9),
                          child: Icon(Icons.edit,color: Colors.green, size: 15,),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text('Edit', style: TextStyle(color: Colors.black, fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
