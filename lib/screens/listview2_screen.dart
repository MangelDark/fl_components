import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget{
   
 const ListView2Screen({Key? key}): super(key: key);

 final options = const ["Megaman","Metal Gear","Super Smash","Final Fantasys"];
  
 @override
 Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text("List View 2 screen"),
        elevation:0,
        backgroundColor: Colors.indigo,
        ),
      body:  ListView.separated(
        itemCount: options.length,
        itemBuilder:(context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.indigo,),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ) ,
        separatorBuilder: (_, __) => const Divider(),
      ),
     );
    }
 }