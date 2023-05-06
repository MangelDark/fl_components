import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget{
   
 const AlertScreen({Key? key}): super(key: key);
  
  void displayDialogAndroid(BuildContext context){
    showDialog(
    barrierDismissible: true,
    context: context, 
    builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
        title: const Text('Esta dentro de una alerta'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
              FlutterLogo( size: 100, )
          ],
        ),
        actions: [
          TextButton(
            onPressed: ()=> Navigator.pop(context), 
            child: const Text('Cerrar')
            
            ),
          ElevatedButton(onPressed: (){}, child: const Text('Aceptar'))
        ],
      );
    });
  }
  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(context: context, 
    builder: (context) =>  CupertinoAlertDialog(
      title: const Text("Alerta para IOS"),
      actions: [
        CupertinoButton(
          onPressed: ()=> Navigator.pop(context),
          child: const Text("Cancelar",style: TextStyle(
            color: Colors.red
          ),),
          ),
        CupertinoButton(onPressed: (){}, child: const Text('Aceptar'))
      ],
      content: Column(
        
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text("Este es el contenido de la alerta"),
          SizedBox(height: 10,),
          FlutterLogo(size: 100,)
        ]),
    ) );
  }

 @override
 Widget build(BuildContext context){
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context), 
          child: 
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: 
                Text('mostrar alerta',
                    style: TextStyle(
                                      fontSize: 16),),
          )),
      ),
      floatingActionButton: 
      FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
        
        ),
     );
    }
 }