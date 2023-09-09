import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:math_expressions/math_expressions.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  double num1=0.0;
  double num2=0.0;
  var input="";
  var operator="";
  var output="";
  double a=2.718;
  onbuttonclick(value){
    if(value == "AC"){
      input="";
      output="";
    }
    else if(value=="x"){
      input=input.substring(0,input.length-1);
      output="";
    }
    else if(value=="e"){
      output=input * a.toInt();
    }
    else if(value=="="){
    var userinput=input;
    userinput=input.replaceAll("x", "*");
    Parser p=Parser();
    Expression expression=p.parse(userinput);
    ContextModel cm=ContextModel();
    var finalvalue=expression.evaluate(EvaluationType.REAL, cm);
    output=finalvalue.toString();
    }
    else{
      input=input+value;
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Card(
          elevation: 30,
          color: Colors.black,
          // shadowColor: Colors.white,
          child: SizedBox(
            width: 0.9*w,
            height:0.9*h,
            child:Padding(
              padding: EdgeInsets.symmetric(vertical:0,horizontal: 20),

                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(input,style: TextStyle(fontSize: 30,color: Colors.white),),
                Text(output,style: TextStyle(fontSize: 30,color: Colors.white),),
             SizedBox(
               height: 10,
             ),
             Row(
              children: [
                ElevatedButton(onPressed: ()=>onbuttonclick("AC"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    child: Text("AC",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: ()=>onbuttonclick("x"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    child: Text("X",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: ()=>onbuttonclick("%"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                    ),
                    child: Text("%",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: ()=>onbuttonclick("/"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    child: Text("/",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              ],
            ),
              SizedBox(
                height: 20,
              ),
                Row(
                  children: [
                    ElevatedButton(onPressed: ()=>onbuttonclick("7"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("7",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("8"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("8",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("9"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ),
                        ),
                        child: Text("9",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("*"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("*",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: ()=>onbuttonclick("4"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("4",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("5"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("5",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),

                      ElevatedButton(onPressed: ()=>onbuttonclick("6"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ),
                        ),
                        child: Text("6",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("-"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: ()=>onbuttonclick("1"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("2"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("3"),
                        style: ElevatedButton.styleFrom(

                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ),
                        ),
                        child: Text("3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("+"),
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.transparent,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("+",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: ()=>onbuttonclick("0"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("."),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text(".",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),

                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick("("),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text("(",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: ()=>onbuttonclick(")"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        child: Text(")",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: ()=>onbuttonclick("="),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    child: Text("=",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              ],
            )
          ),

        ),
        ),
    ),

    );
  }
}
