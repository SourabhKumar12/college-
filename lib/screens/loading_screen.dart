import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:college/screens/HomePage.dart';
 class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
    State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
void initState() {
    super.initState();
    // Wait for 5 seconds and then navigate to the HomePage
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network('https://lottie.host/4f23aac1-eb7d-418f-aa8a-20ab5397759f/D9BkIXcNN2.json'),

          const Text('Please Wait',style: TextStyle(color: Color.fromARGB(255, 76, 136, 167),fontSize: 16),),
         const  Text('Your Account is being created!',style: TextStyle(color: Color.fromARGB(255, 76, 136, 167),fontSize: 16),)
        ],
      ),),
    );
  }
}