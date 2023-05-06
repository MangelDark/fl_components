
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTypeOne extends StatelessWidget {
  const CustomCardTypeOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined,color: AppTheme.primary,),
          title: Text("Soy un titulo"),
          subtitle: Text("Laborum minim eiusmod sint minim laborum Lorem qui Lorem enim quis est."),
         ) ,
         Padding(
           padding: const EdgeInsets.only(right: 5.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              TextButton(
                onPressed: (){},
                child: const  Text("Cancel"),),
              TextButton(onPressed: (){}, child: const Text("Ok"))
            ],
           ),
         )
        ]
        ),
    );
  }
}