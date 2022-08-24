import 'package:flutter/material.dart';
import 'package:components/fonts/fonts.dart';

class ListView1 extends StatelessWidget {
   
   final options = const['Megaman','Metal Gear','Super Smash','Final Fantasy'];


  const ListView1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1')
      ),
      body: ListView(
        children: [
          ...options.map((game) 
          => ListTile(
            title: Text( game , style: FontSize.sizeTitles),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )
          ).toList()
        ],
      )
      );
  }
}