import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:calculator/home.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SpinKitCircle(

             color: Colors.blue,
             size:200,
           )
         ],
       ),
      ),
    );
  }
}

