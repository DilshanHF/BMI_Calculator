import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key,});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int height = 55;
  int weight = 70;

  String gender = "";

  late double bmi = calculateBMI(height: height,weight: weight);
  
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
                GestureDetector(
                  onTap: () {
                    print("Male");
                    setState(() {
                      gender = "M";
                    });
                    
                  },

                  child: Container(
                    height: 200,
                    width: 175,
                    decoration: BoxDecoration(
                      color:gender =="M"? Colors.orange.withAlpha(150):Colors.orange.withAlpha(50),
                      borderRadius: BorderRadius.circular(25)
                  
                    ),
                     
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Icon(Icons.male, size: 150),
                      const Text("Male")
                    ],
                    ),
                  ),
                ),
                Spacer(),
               GestureDetector(
                onTap: (){
                  print("Female");
                  setState(() {
                    gender = "F";
                  });
                },
                 child: Container(
                  height: 200,
                  width: 175,
                  decoration: BoxDecoration(
                    color: gender == "F" ? Colors.orange.withAlpha(150):Colors.orange.withAlpha(50),
                    borderRadius: BorderRadius.circular(25)
                  ),
                    
                
                   padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Icon(Icons.female,size: 150),
                     const Text("FeMale")
                    ],),
                  ),
               )
              ],
            ),
         Row(
              children: [
                Padding( 
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text("Height"),
                    Text("$height",style:TextStyle(color: Color.fromARGB(255, 231, 30, 30),fontSize: 50,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed:(){
                            setState(() {
                             if(height < 250) height++;
                             bmi = calculateBMI(height: height, weight: weight);
                            });
                          },
                        child: Icon(Icons.add,size: 40,)
                        ),
                        const SizedBox(width: 25),
                        FloatingActionButton(
                          onPressed:() {
                            setState(() {
                            
                            if(height > 50)height--;
                            bmi = calculateBMI(height: height, weight: weight);
                            });
                          },
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
                    Text("$weight",style:TextStyle(color: Color.fromARGB(255, 231, 30, 30),fontSize: 50,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed:(){
                            setState(() {
                             if(weight < 200) weight++;
                             bmi = calculateBMI(height: height, weight: weight);
                            });
                          },
                        child: Icon(Icons.add,size: 40,)
                        ),
                        const SizedBox(width: 25),
                        FloatingActionButton(
                          onPressed:(){
                            setState(() {
                              if(weight>0)weight--;
                              bmi = calculateBMI(height: height, weight: weight);
                            });
                          },
                        child: Icon(Icons.remove,size: 40,)
                        ),
                      ],
                    ),
                    ],
                  ),
                ),
              ],
            ),
           const SizedBox(height: 50,),
            Column(
              children: [
                Text("BMI"),
                Text("${bmi.toStringAsFixed(2)}",
                style:TextStyle(color: Color.fromARGB(255, 231, 30, 30),fontSize: 50,fontWeight: FontWeight.bold),),
                Text(getResult(bmi)),
              ],
            ),
        ],)),
      ),
    );

  }

  double calculateBMI({required int height,required int weight}){
    return (weight/(height*height))*10000;

  }

String getResult(bmiValue){
  if(bmiValue >= 25){
    return "Overweight";
  }else if(bmiValue > 18.5){
    return "Normal";
  } else{
    return "UnderWeight";  
  }

}




}