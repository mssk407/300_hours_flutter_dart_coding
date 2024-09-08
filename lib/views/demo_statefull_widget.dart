import 'package:flutter/material.dart';

class DemoStatefullWidget extends StatefulWidget {
  const DemoStatefullWidget({super.key});

  @override
  State<DemoStatefullWidget> createState() => _DemoStatefullWidgetState();
}

class _DemoStatefullWidgetState extends State<DemoStatefullWidget> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Center(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("$count",style: TextStyle(fontSize: 30,color: Colors.white),),)),
          ),
          SizedBox(height: 200,),
          FloatingActionButton(
            onPressed: (){
             count++;
            setState(() {
             
            });
          },
          child: Icon(Icons.add),)

        ],
      ),
    );
  }
}