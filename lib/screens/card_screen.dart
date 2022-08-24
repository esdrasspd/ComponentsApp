import 'package:flutter/material.dart';
import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(name: 'Un hermoso paisaje', imageUrl: 'https://modatechguatemala.com/wp-content/uploads/2020/06/travel-landscape-01.jpg'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQptbc47jjz1Ji1mfzdxqVXxZoBBvMZP_u8y5vMF0Zwnm_rxG026ltXdA_smJQXxaEP3NY&usqp=CAU'),
          SizedBox(height: 50),

        ],
      ),
      );
  }
}

