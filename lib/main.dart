import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    //  debugShowCheckedModeBanner: false,
      home:LayOutDesign(),
    );
  }
}

class LayOutDesign extends StatefulWidget {
  const LayOutDesign({ Key? key }) : super(key: key);

  @override
  State<LayOutDesign> createState() => _LayOutDesignState();
}

class _LayOutDesignState extends State<LayOutDesign> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                     const  Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 10,     
                      ),
                      const Text("Call",
                      style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                     Icon(Icons.route,
                      color: Colors.blue,
                      ),
                      SizedBox(height: 10),
                      Text("Route",
                      style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  
                  Column(
                    children: [
                      Icon(Icons.share,
                      color: Colors.blue,
                      ),
                      SizedBox(height: 10),
                      Text("Share",
                      style: TextStyle(color:Colors.blue),                      
                      ),
                    ],
                  )
                ]),
            )
          ],
          )),  
    );
  }
}