import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget{
   
 const ListView1Screen({Key? key}): super(key: key);

 final options = const ["Megaman","Metal Gear","Super Smash","Final Fantasys"];
  
 @override
 Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text("List View 1 screen")),
      body:  ListView(
        children: [
          ...options.map((e) => 
          ListTile(
            onTap: () => {
              print(e)
            },
            trailing: const Icon(Icons.arrow_circle_right_rounded),
            title: Text(e),
          )).toList()
        ],
      ),
     );
    }
 }