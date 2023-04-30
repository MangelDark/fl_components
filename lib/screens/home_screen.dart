import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
   
 const HomeScreen({Key? key}): super(key: key);
  
 @override
 Widget build(BuildContext context){

  final menuOptions = AppRouter.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title:const Text("Componentes de flutter"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context,index) => ListTile(
          title:  Text(menuOptions[index].name),
          leading:  Icon(menuOptions[index].icon),
          onTap: (){

              // final route  = MaterialPageRoute(builder: 
              // (context) => const ListView1Screen());
              // Navigator.push(context, route);
              Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) =>  const Divider() , 
        itemCount: menuOptions.length)
     );
    }
 }