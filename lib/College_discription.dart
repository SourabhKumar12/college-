import 'package:flutter/material.dart';

class Discription extends StatelessWidget {
  const Discription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Column(
   crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  
      Image.asset('images/cgp1.png'),
  
      SizedBox(height: 20,),
  
      const Text('IIT Madrash - Indian Institute Of \n Technology Madrash: Admission 2023',style: TextStyle(fontSize: 20),),
  
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        
         
        
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
        
           ElevatedButton(onPressed: () {
        
            print('Button 1 pressed');
        
           },
        
            child: Text('Will you get in?')),
        
        
        
        ElevatedButton(onPressed: () {
        
            print('Button 1 pressed');
        
           },
        
            child: Text('Brochure'),style: ElevatedButton.styleFrom(primary: Colors.green[600])),
        
            
        
          ],
        
        ),
      )
  
    ],
  
  ),
),
    );
  }
}