import 'package:flutter/material.dart';
import 'package:components/fonts/fonts.dart';

class ListView2 extends StatelessWidget {
   
   final options = const['Megaman','Metal Gear','Super Smash','Final Fantasy'];


  const ListView2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length ,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index], style: FontSize.sizeTitles),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
          onTap: () {
            
          },
        ), 
        separatorBuilder: (_, __ ) => const Divider(),
      )
      );
  }
}