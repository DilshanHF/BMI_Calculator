import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key,});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:      SafeArea(
        child: Container(
        color: Color.fromARGB(255, 247, 247, 249),
        child: Column(
          children: [
            Row(
              children: [
                Padding( 
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Icon(Icons.male, size: 150),
                    const Text("Male")
                  ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Icon(Icons.female,size: 150),
                   const Text("FeMale")
                  ],),
                )
              ],
            ),
         Row(
              children: [
                Padding( 
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    const Text("Height"),
                    Text("176",style:TextStyle(color: Color.fromARGB(255, 231, 30, 30),fontSize: 50,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed:null,
                        child: Icon(Icons.add,size: 40,)
                        ),
                        const SizedBox(width: 25),
                        FloatingActionButton(
                          onPressed:null,
                        child: Icon(Icons.remove,size: 40,)
                        ),
                      ],
                    ),
                    ],
                  ),
                ),
                Spacer(),
                Padding( 
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    const Text("Weight"),
                    Text("50Kg",style:TextStyle(color: Color.fromARGB(255, 231, 30, 30),fontSize: 50,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed:null,
                        child: Icon(Icons.add,size: 40,)
                        ),
                        const SizedBox(width: 25),
                        FloatingActionButton(
                          onPressed:null,
                        child: Icon(Icons.remove,size: 40,)
                        ),
                      ],
                    ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("BMI"),
                Text("50"),
              ],
            ),
        ],)),
      ),
    );

  }
}